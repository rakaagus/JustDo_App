import 'package:get_it/get_it.dart';
import 'package:justdo_mini_project/data/local/floor/JD_habit_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_jurnal_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_subtask_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_tag_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_todo_category_dao.dart';
import 'package:justdo_mini_project/data/local/floor/JD_todo_dao.dart';
import 'package:justdo_mini_project/data/local/floor/database/app_database.dart';
import 'package:justdo_mini_project/data/local/floor/database/app_database_builder.dart';
import 'package:justdo_mini_project/data/local/shared/shered_pref_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> init() async {

  // Database
  var db = await JdDatabaseBuilder.buildDatabase();

  //Dao
  getIt.registerLazySingleton<JdTodoDao>(() => db.todoDao);
  getIt.registerLazySingleton<JdCategoryTodoDao>(() => db.categoryTodoDao);
  getIt.registerLazySingleton<JdHabitDao>(() => db.habitDao);
  getIt.registerLazySingleton<JdTagDao>(() => db.tagDao);
  getIt.registerLazySingleton<JdSubtaskDao>(() => db.subtaskDao);
  getIt.registerLazySingleton<JdJurnalDao>(() => db.jurnalDao);

  // Database
  var dbHelper = await JdDatabaseBuilder.buildDatabase();
  getIt.registerLazySingleton<JdDatabase>(() => dbHelper);

  var sharedPrefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<AppPreferences>(() => AppPreferences(prefs: sharedPrefs));
}