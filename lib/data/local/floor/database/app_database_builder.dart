import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/floor/database/app_database.dart';

class JdDatabaseBuilder {
  static JdDatabase? _jdDatabase;
  static List<Migration> _migrationList = [];

  static Future<JdDatabase> buildDatabase() async {
    buildMigrationList();
    if (_jdDatabase == null) {
      _jdDatabase = await $FloorJdDatabase.databaseBuilder("just_do.db")
          .addMigrations(_migrationList)
          .build();
    }
    return _jdDatabase!;
  }

  static void buildMigrationList() {
    _migrationList.clear();
  }

  static List<Migration> get migrationList => _migrationList;
}

class JdDatabaseNonBuilder {
  static JdDatabase? _jdDatabase;

  Future<JdDatabase> buildDatabase() async {
    JdDatabaseBuilder.buildMigrationList();
    if (_jdDatabase == null) {
      _jdDatabase = await $FloorJdDatabase.databaseBuilder("just_do.db")
          .addMigrations(JdDatabaseBuilder.migrationList)
          .build();
    }
    return _jdDatabase!;
  }
}
