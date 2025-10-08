import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_category_entity.dart';
import 'package:justdo_mini_project/domain/model/ui/JD_ui_todo_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@Entity(
    tableName: KEY_TODO_TABLE,
    foreignKeys: [
      ForeignKey(
          childColumns: [KEY_COL_CATEGORY_ID],
          parentColumns: [KEY_COL_ID],
          entity: JdCategoryEntity,
          onDelete: ForeignKeyAction.setNull,
          onUpdate: ForeignKeyAction.cascade
      ),
    ],
    primaryKeys: ['id']
)
class JdTodoEntity extends Equatable {

  JdTodoEntity({
    this.id = '',
    this.name = '',
    this.startDate = '',
    this.deadlineTimilis = '',
    this.status = '',
    this.description = '',
    this.isComplete = false,
    this.categoryId = ''
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';
  @ColumnInfo(name: KEY_COL_START) String startDate = '';
  @ColumnInfo(name: KEY_COL_DESCRIPTION) String description = '';
  @ColumnInfo(name: KEY_COL_IS_COMPLETE) bool isComplete = false;
  @ColumnInfo(name: KEY_COL_DEADLINE) String deadlineTimilis = '';
  @ColumnInfo(name: KEY_COL_STATUS) String status = '';
  @ColumnInfo(name: KEY_COL_CATEGORY_ID) String categoryId = '';

  factory JdTodoEntity.mapFromUi(JdTodoUiEntity entity) => JdTodoEntity(
      id: entity.id,
      name: entity.name,
      startDate: entity.startDate,
      description: entity.description,
      isComplete: entity.isComplete,
      deadlineTimilis: entity.deadlineTimilis,
      status: entity.status,
      categoryId: entity.categoryId
  );

  @override
  List<Object?> get props => [id, name, startDate, description, isComplete, deadlineTimilis, status, categoryId];
}