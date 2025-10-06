import 'package:equatable/equatable.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_entity.dart';

class JdTodoUiEntity extends Equatable{
  String id = '';
  String name = '';
  String startDate = '';
  String description = '';
  bool isComplete = false;
  String deadlineTimilis = '';
  String status = '';

  JdTodoUiEntity({
    this.id = '',
    this.name = '',
    this.startDate = '',
    this.description = '',
    this.isComplete = false,
    this.deadlineTimilis = '',
    this.status = ''
  });

  factory JdTodoUiEntity.fromLocal(JdTodoEntity entity) => JdTodoUiEntity(
    id: entity.id,
    name: entity.name,
    startDate: entity.startDate,
    description: entity.description,
    isComplete: entity.isComplete,
    deadlineTimilis: entity.deadlineTimilis,
    status: entity.status
  );

  @override
  List<Object?> get props => [id, name, startDate, description, isComplete, deadlineTimilis, status];
}