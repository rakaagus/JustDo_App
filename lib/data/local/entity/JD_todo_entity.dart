import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@Entity(tableName: KEY_TODO_TABLE, primaryKeys: ['id'])
class JdTodoEntity extends Equatable {

  JdTodoEntity({
    this.id = '',
    this.name = '',
    this.startDate = '',
    this.deadlineTimilis = '',
    this.status = '',
    this.description = '',
    this.isComplete = false,
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';
  @ColumnInfo(name: KEY_COL_START) String startDate = '';
  @ColumnInfo(name: KEY_COL_DESCRIPTION) String description = '';
  @ColumnInfo(name: KEY_COL_IS_COMPLETE) bool isComplete = false;
  @ColumnInfo(name: KEY_COL_DEADLINE) String deadlineTimilis = '';
  @ColumnInfo(name: KEY_COL_STATUS) String status = '';

  factory JdTodoEntity.mapFromUi(JdTodoEntity entity) => JdTodoEntity(
      id: entity.id,
      name: entity.name,
      startDate: entity.startDate,
      description: entity.description,
      isComplete: entity.isComplete,
      deadlineTimilis: entity.deadlineTimilis,
      status: entity.status
  );

  @override
  List<Object?> get props => [id, name, startDate, description, isComplete, deadlineTimilis, status];
}