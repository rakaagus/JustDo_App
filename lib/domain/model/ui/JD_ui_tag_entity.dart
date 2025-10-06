import 'package:equatable/equatable.dart';
import 'package:justdo_mini_project/data/local/entity/JD_tag_entity.dart';

class JdTagUiEntity extends Equatable{
  String id = '';
  String name = '';

  JdTagUiEntity({
    this.id ='',
    this.name = '',
  });

  factory JdTagUiEntity.fromLocal(JdTagEntity entity) => JdTagUiEntity(
    id: entity.id,
    name: entity.name
  );

  @override
  List<Object?> get props => [id, name];
}