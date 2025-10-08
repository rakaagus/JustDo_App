import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@dao
abstract class JdTodoDao {
  @Query('SELECT * FROM $KEY_TODO_TABLE ORDER BY $KEY_COL_START DESC')
  Future<List<JdTodoEntity>> getAllTodos();

  @Query('SELECT * FROM $KEY_TODO_TABLE WHERE id = :id')
  Future<JdTodoEntity?> getTodoById(String id);

  @Query('SELECT * FROM $KEY_TODO_TABLE WHERE $KEY_COL_CATEGORY_ID = :categoryId')
  Future<List<JdTodoEntity>> getTodosByCategory(String categoryId);

  @insert
  Future<void> insertTodo(JdTodoEntity todo);

  @update
  Future<void> updateTodo(JdTodoEntity todo);

  @delete
  Future<void> deleteTodo(JdTodoEntity todo);

  @Query('DELETE FROM $KEY_TODO_TABLE')
  Future<void> clearAll();
}