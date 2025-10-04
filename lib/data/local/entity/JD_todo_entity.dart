import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@Entity(tableName: KEY_TODO_TABLE, primaryKeys: ['id'])
class TodoEntity extends Equatable {

  TodoEntity({
    this.id = '',
    this.name = '',
    this.startDate = '',
    this.deadlineTimilis = '',
    this.status = ''
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';
  @ColumnInfo(name: KEY_COL_START) String startDate = '';
  @ColumnInfo(name: KEY_COL_DEADLINE) String deadlineTimilis = '';
  @ColumnInfo(name: KEY_COL_STATUS) String status = '';

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}