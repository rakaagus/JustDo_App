import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_habit_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@dao
abstract class JdHabitDao {
  @Query('SELECT * FROM $KEY_HABITS_TABLE ORDER BY $KEY_COL_TITLE ASC')
  Future<List<JdHabitEntity>> getAllHabits();

  @Query('SELECT * FROM $KEY_HABITS_TABLE WHERE id = :id')
  Future<JdHabitEntity?> getHabitById(String id);

  @insert
  Future<void> insertHabit(JdHabitEntity habit);

  @update
  Future<void> updateHabit(JdHabitEntity habit);

  @delete
  Future<void> deleteHabit(JdHabitEntity habit);

  @Query('DELETE FROM $KEY_HABITS_TABLE')
  Future<void> clearAll();
}