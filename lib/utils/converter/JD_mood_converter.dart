import 'package:floor/floor.dart';
import 'package:justdo_mini_project/utils/enum/JD_mood_enum.dart';

class JdMoodConverter extends TypeConverter<JdMood, String> {
  @override
  JdMood decode(String databaseValue) => JdMood.values.firstWhere(
        (e) => e.toString() == databaseValue,
    orElse: () => JdMood.normal,
  );

  @override
  String encode(JdMood value)  => value.toString();

}