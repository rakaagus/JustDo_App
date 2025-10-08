import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_tag_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@dao
abstract class JdTagDao {
  @Query('SELECT * FROM $KEY_TAG_TABLE WHERE $KEY_COL_TODO_ID = :todoId')
  Future<List<JdTagEntity>> getTagsByTodoId(String todoId);

  @insert
  Future<void> insertTag(JdTagEntity tag);

  @update
  Future<void> updateTag(JdTagEntity tag);

  @delete
  Future<void> deleteTag(JdTagEntity tag);

  @Query('DELETE FROM $KEY_TAG_TABLE WHERE $KEY_COL_TODO_ID = :todoId')
  Future<void> deleteTagsByTodoId(String todoId);
}