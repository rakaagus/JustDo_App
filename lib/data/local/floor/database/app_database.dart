import 'dart:async';

import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_habit_entity.dart';
import 'package:justdo_mini_project/data/local/entity/JD_subtask_entity.dart';
import 'package:justdo_mini_project/data/local/entity/JD_tag_entity.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_category_entity.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_entity.dart';
import 'package:justdo_mini_project/data/local/floor/JD_habit_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_jurnal_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_subtask_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_tag_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_todo_category_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_todo_dao.dart';
import 'package:justdo_mini_project/data/local/entity/JD_jurnal_entity.dart';
import 'package:justdo_mini_project/utils/converter/JD_frequency_converter.dart';
import 'package:justdo_mini_project/utils/converter/JD_mood_converter.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart';

@TypeConverters([
  JdMoodConverter,
  JDFrequencyConverter
])
@Database(
    version: 1,
    entities: [
      JdTodoEntity,
      JdCategoryEntity,
      JdTagEntity,
      JdSubtaskEntity,
      JdHabitEntity,
      JdJurnalEntity
    ]
)
abstract class JdDatabase extends FloorDatabase {
  JdTodoDao get todoDao;
  JdHabitDao get habitDao;
  JdCategoryTodoDao get categoryTodoDao;
  JdTagDao get tagDao;
  JdSubtaskDao get subtaskDao;
  JdJurnalDao get jurnalDao;
}