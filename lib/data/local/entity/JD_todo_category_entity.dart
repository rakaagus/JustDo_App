import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@Entity(tableName: KEY_CATEGORY_TODO_TABLE, primaryKeys: ['id'])
class CategoryEntity extends Equatable {

  CategoryEntity({
    this.id = '',
    this.name = '',
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}