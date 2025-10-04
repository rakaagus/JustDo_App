import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@Entity(tableName: KEY_HABITS_TABLE, primaryKeys: ['id'])
class HabitEntity extends Equatable {

  HabitEntity({
    this.id = '',
    this.name = '',
    this.goalTime = 0,
    this.dailyCount = 0,
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';
  @ColumnInfo(name: KEY_COL_COUNT) int dailyCount = 0;
  @ColumnInfo(name: KEY_COL_GOAL_TIME) int goalTime = 0;

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}