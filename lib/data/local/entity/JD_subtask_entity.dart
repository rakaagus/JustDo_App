import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@Entity(tableName: KEY_SUBTASK_TABLE, primaryKeys: ['id'])
class SubtaskTodo extends Equatable {

  SubtaskTodo({
    this.id = '',
    this.name = '',
    this.isComple = false,
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
  @ColumnInfo(name: KEY_COL_IS_COMPLETE) bool isComple = false;
  @ColumnInfo(name: KEY_COL_DEADLINE) String deadlineTimilis = '';
  @ColumnInfo(name: KEY_COL_STATUS) String status = '';

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}