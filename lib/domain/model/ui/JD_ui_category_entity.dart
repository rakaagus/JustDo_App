import 'package:equatable/equatable.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_category_entity.dart';

class JdCategoryUiEntity extends Equatable{
  String id = '';
  String name = '';
  String colorHex = '';

  JdCategoryUiEntity({
   this.id = '',
   this.name = '',
   this.colorHex = ''
  });

  factory JdCategoryUiEntity.fromLocal(JdCategoryEntity entity) => JdCategoryUiEntity(
      id: entity.id,
      name: entity.name,
      colorHex: entity.colorHex
  );

  @override
  List<Object?> get props => throw UnimplementedError();
}