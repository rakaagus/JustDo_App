import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_entity.dart';
import 'package:justdo_mini_project/domain/model/ui/JD_ui_subtask_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@Entity(
  tableName: KEY_SUBTASK_TABLE,
  primaryKeys: ['id'],
  foreignKeys: [
    ForeignKey(
        childColumns: [KEY_COL_TODO_ID],
        parentColumns: [KEY_COL_ID],
        entity: JdTodoEntity,
        onDelete: ForeignKeyAction.cascade
    )
  ],
)
class JdSubtaskEntity extends Equatable {

  JdSubtaskEntity({
    this.id = '',
    this.name = '',
    this.isComplete = false,
    this.description = '',
    this.startDate = '',
    this.status = '',
    this.deadlineTimilis = '',
    this.todoId = ''
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_TODO_ID) String todoId = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';
  @ColumnInfo(name: KEY_COL_START) String startDate = '';
  @ColumnInfo(name: KEY_COL_DESCRIPTION) String description = '';
  @ColumnInfo(name: KEY_COL_IS_COMPLETE) bool isComplete = false;
  @ColumnInfo(name: KEY_COL_DEADLINE) String deadlineTimilis = '';
  @ColumnInfo(name: KEY_COL_STATUS) String status = '';

  factory JdSubtaskEntity.mapFromUi(JdSubtaskUiEntity entity) => JdSubtaskEntity(
    id: entity.id,
    name: entity.name,
    startDate: entity.startDate,
    status: entity.status,
    isComplete: entity.isComplete,
    deadlineTimilis: entity.deadlineTimilis,
    description: entity.description,
    todoId: entity.todoId,
  );

  @override
  List<Object?> get props => [id, name, startDate, description, isComplete, deadlineTimilis, status, todoId];
}