import 'package:equatable/equatable.dart';
import 'package:justdo_mini_project/data/local/entity/JD_subtask_entity.dart';

class JdSubtaskUiEntity extends Equatable{
  String id = '';
  String todoId = '';
  String name = '';
  String startDate = '';
  String description = '';
  bool isComplete = false;
  String deadlineTimilis = '';
  String status = '';

  JdSubtaskUiEntity({
    this.id = '',
    this.name = '',
    this.isComplete = false,
    this.description = '',
    this.startDate = '',
    this.status = '',
    this.deadlineTimilis = '',
    this.todoId = '',
  });

  factory JdSubtaskUiEntity.fromLocal(JdSubtaskEntity entity) => JdSubtaskUiEntity(
      id: entity.id,
      name: entity.name,
      todoId: entity.todoId,
      startDate: entity.startDate,
      status: entity.status,
      isComplete: entity.isComplete,
      deadlineTimilis: entity.deadlineTimilis,
      description: entity.description
  );

  @override
  List<Object?> get props => [id, todoId, name, startDate, description, isComplete, deadlineTimilis, status];
}