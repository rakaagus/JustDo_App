import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/domain/model/ui/JD_ui_habit_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';
import 'package:justdo_mini_project/utils/enum/frequency_enum.dart';

@Entity(tableName: KEY_HABITS_TABLE, primaryKeys: ['id'])
class JdHabitEntity extends Equatable {

  JdHabitEntity({
    this.id = '',
    this.name = '',
    this.goalTime = '',
    this.streak = 0,
    this.isHaveGoalDate = false,
    this.frequency = FrequencyEnum.daily
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';
  @ColumnInfo(name: KEY_STREAK) int streak = 0;
  @ColumnInfo(name: KEY_FREQUENCY) FrequencyEnum frequency = FrequencyEnum.daily;
  @ColumnInfo(name: KEY_COL_IS_HAVE_GOAL) bool isHaveGoalDate = false;
  @ColumnInfo(name: KEY_COL_GOAL_TIME) String goalTime = '';

  factory JdHabitEntity.mapFromUi(JdHabitUiEntity entity) => JdHabitEntity(
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