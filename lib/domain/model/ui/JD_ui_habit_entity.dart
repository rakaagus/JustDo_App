import 'package:equatable/equatable.dart';
import 'package:justdo_mini_project/data/local/entity/JD_habit_entity.dart';
import 'package:justdo_mini_project/utils/enum/JD_frequency_enum.dart';

class JdHabitUiEntity extends Equatable{

  JdHabitUiEntity({
    this.id = '',
    this.title = '',
    this.streak = 0,
    this.frequency = JdFrequencyEnum.daily,
    this.isHaveGoalDate = false,
    this.goalTime = ''
  });

  String id = '';
  String title = '';
  int streak = 0;
  JdFrequencyEnum frequency = JdFrequencyEnum.daily;
  bool isHaveGoalDate = false;
  String goalTime = '';

  factory JdHabitUiEntity.fromLocal(JdHabitEntity entity) => JdHabitUiEntity(
      id: entity.id,
      title: entity.title,
      streak: entity.streak,
      frequency: entity.frequency,
      isHaveGoalDate: entity.isHaveGoalDate,
      goalTime: entity.goalTime
  );

  @override
  List<Object?> get props => [id, title, streak, frequency, isHaveGoalDate, goalTime];
}