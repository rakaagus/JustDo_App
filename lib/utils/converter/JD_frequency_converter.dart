import 'package:floor/floor.dart';
import 'package:justdo_mini_project/utils/enum/frequency_enum.dart';

class JDFrequencyConverter extends TypeConverter<JdFrequencyEnum, String> {
  @override
  JdFrequencyEnum decode(String databaseValue) => JdFrequencyEnum.values.firstWhere(
        (e) => e.toString() == databaseValue,
    orElse: () => JdFrequencyEnum.daily,
  );

  @override
  String encode(JdFrequencyEnum value) => value.toString();
  
}