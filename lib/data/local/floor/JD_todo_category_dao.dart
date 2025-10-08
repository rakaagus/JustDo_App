import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_category_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@dao
abstract class JdCategoryTodoDao {
  @Query('SELECT * FROM $KEY_CATEGORY_TODO_TABLE ORDER BY $KEY_COL_NAME ASC')
  Future<List<JdCategoryEntity>> getAllCategories();

  @Query('SELECT * FROM $KEY_CATEGORY_TODO_TABLE WHERE id = :id')
  Future<JdCategoryEntity?> getCategoryById(String id);

  @insert
  Future<void> insertCategory(JdCategoryEntity category);

  @update
  Future<void> updateCategory(JdCategoryEntity category);

  @delete
  Future<void> deleteCategory(JdCategoryEntity category);
}
