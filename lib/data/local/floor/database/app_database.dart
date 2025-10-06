import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_habit_entity.dart';
import 'package:justdo_mini_project/data/local/entity/JD_subtask_entity.dart';
import 'package:justdo_mini_project/data/local/entity/JD_tag_entity.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_category_entity.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_entity.dart';
import 'package:justdo_mini_project/data/local/floor/JD_habit_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_subtask_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_tag_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_todo_category_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_todo_dao.dart';

@Database(version: 1, entities: [ JdTodoEntity, JdCategoryEntity, JdTagEntity, JdSubtaskEntity, JdHabitEntity ])
abstract class JdDatabase extends FloorDatabase {
  JdTodoDao get todoDao;
  JdHabitDao get habitDao;
  JdCategoryTodoDao get categoryTodoDao;
  JdTagDao get tagDao;
  JdSubtaskDao get subtaskDao;
}