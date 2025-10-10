import 'package:equatable/equatable.dart';
import 'package:justdo_mini_project/data/local/entity/JD_jurnal_entity.dart';
import 'package:justdo_mini_project/utils/enum/JD_mood_enum.dart';

class JdJurnalUiEntity extends Equatable {

  String id = '';
  String title = '';
  JdMood mood = JdMood.normal;
  String content = '';
  String createAt = '';
  String updateAt = '';
  bool isFav = false;

  JdJurnalUiEntity({
    this.id = '',
    this.content = '',
    this.mood = JdMood.normal,
    this.createAt = '',
    this.title = '',
    this.isFav = false,
    this.updateAt = ''
  });

  factory JdJurnalUiEntity.fromLocal(JdJurnalEntity entity) => JdJurnalUiEntity(
    id: entity.id,
    title: entity.title,
    mood: entity.mood,
    content: entity.content,
    createAt: entity.createAt,
    updateAt: entity.updateAt,
    isFav: entity.isFav
  );

  @override
  List<Object?> get props => [id, title, content, mood, createAt, updateAt, isFav];
}