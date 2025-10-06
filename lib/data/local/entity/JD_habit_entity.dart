import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/utils/constant.dart';
import 'package:justdo_mini_project/utils/enum/frequency_enum.dart';

@Entity(tableName: KEY_HABITS_TABLE, primaryKeys: ['id'])
class HabitEntity extends Equatable {

  HabitEntity({
    this.id = '',
    this.name = '',
    this.goalTime = '',
    this.streak = 0,
    this.isHaveGoalDate = false,
    this.frequency = frequencyEnum.daily
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';
  @ColumnInfo(name: KEY_STREAK) int streak = 0;
  @ColumnInfo(name: KEY_FREQUENCY) frequencyEnum frequency = frequencyEnum.daily;
  @ColumnInfo(name: KEY_COL_IS_HAVE_GOAL) bool isHaveGoalDate = false;
  @ColumnInfo(name: KEY_COL_GOAL_TIME) String goalTime = '';

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}