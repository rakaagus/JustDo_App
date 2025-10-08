import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_subtask_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@dao
abstract class JdSubtaskDao {
  @Query('SELECT * FROM $KEY_SUBTASK_TABLE WHERE $KEY_COL_TODO_ID = :todoId ORDER BY $KEY_COL_START ASC')
  Future<List<JdSubtaskEntity>> getSubtasksByTodoId(String todoId);

  @Query('SELECT * FROM $KEY_SUBTASK_TABLE WHERE id = :id')
  Future<JdSubtaskEntity?> getSubtaskById(String id);

  @insert
  Future<void> insertSubtask(JdSubtaskEntity subtask);

  @update
  Future<void> updateSubtask(JdSubtaskEntity subtask);

  @delete
  Future<void> deleteSubtask(JdSubtaskEntity subtask);

  @Query('DELETE FROM $KEY_SUBTASK_TABLE WHERE $KEY_COL_TODO_ID = :todoId')
  Future<void> deleteSubtasksByTodoId(String todoId);
}