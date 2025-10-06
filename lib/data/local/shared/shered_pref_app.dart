import 'package:justdo_mini_project/utils/constant.dart';
import 'package:justdo_mini_project/utils/enum/theme_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static const String keyUsername = KEY_USERNAME;
  static const String keyTheme = KEY_THEME;
  static const String keyLanguage = KEY_LANGUAGE;
  static const String keyFirstRun = KEY_FIRST_RUN;
  static const String keyDailyReminder = KEY_DAILY_REMINDER;

  final SharedPreferences prefs;

  AppPreferences({
    required this.prefs
  });

  Future<void> setUsername(String username) async {
    await prefs.setString(keyUsername, username);
  }

  String getUsername() => prefs.getString(keyUsername) ?? '';

  Future<void> setTheme(ThemeEnum theme) async {
    await prefs.setString(keyTheme, theme.name);
  }

  String getTheme() => prefs.getString(keyTheme) ?? '';


  Future<void> setLanguage(String language) async {
    await prefs.setString(keyLanguage, language);
  }

  String getLanguage() => prefs.getString(keyLanguage) ?? '';

  Future<void> setFirstRun({bool firstRun = false}) async {
    await prefs.setBool(keyFirstRun, firstRun);
  }

  bool getFirstRun() => prefs.getBool(keyFirstRun) ?? false;

  Future<void> setDailyReminder({bool dailyReminder = true}) async {
    await prefs.setBool(keyDailyReminder, dailyReminder);
  }

  bool getDailyReminder() => prefs.getBool(keyDailyReminder) ?? true;
}