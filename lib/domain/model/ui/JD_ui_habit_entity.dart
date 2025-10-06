import 'package:equatable/equatable.dart';
import 'package:justdo_mini_project/data/local/entity/JD_habit_entity.dart';
import 'package:justdo_mini_project/utils/enum/frequency_enum.dart';

class JdHabitUiEntity extends Equatable{

  JdHabitUiEntity({
    this.id = '',
    this.name = '',
    this.streak = 0,
    this.frequency = FrequencyEnum.daily,
    this.isHaveGoalDate = false,
    this.goalTime = ''
  });

  String id = '';
  String name = '';
  int streak = 0;
  FrequencyEnum frequency = FrequencyEnum.daily;
  bool isHaveGoalDate = false;
  String goalTime = '';

  factory JdHabitUiEntity.fromLocal(JdHabitEntity entity) => JdHabitUiEntity(
      id: entity.id,
      name: entity.name,
      streak: entity.streak,
      frequency: entity.frequency,
      isHaveGoalDate: entity.isHaveGoalDate,
      goalTime: entity.goalTime
  );

  @override
  List<Object?> get props => [id, name, streak, frequency, isHaveGoalDate, goalTime];
}