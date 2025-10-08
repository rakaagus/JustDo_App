import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/domain/model/ui/JD_ui_jurnal_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';
import 'package:justdo_mini_project/utils/enum/mood_enum.dart';

@Entity(
    tableName: KEY_JURNAL_TABLE,
    primaryKeys: ['id']
)
class JdJurnalEntity extends Equatable {

  JdJurnalEntity({
    this.id = '',
    this.content = '',
    this.mood = JdMood.normal,
    this.createAt = '',
    this.title = '',
    this.isFav = false,
    this.updateAt = ''
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_ID_NAME) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String title = '';
  @ColumnInfo(name: KEY_COL_MOOD) JdMood mood = JdMood.normal;
  @ColumnInfo(name: KEY_COL_CONTENT) String content = '';
  @ColumnInfo(name: KEY_COL_CREATE_AT) String createAt = '';
  @ColumnInfo(name: KEY_COL_UPDATE_AT) String updateAt = '';
  @ColumnInfo(name: KEY_COL_IS_FAV) bool isFav = false;

  factory JdJurnalEntity.mapFromUi(JdJurnalUiEntity entity) => JdJurnalEntity(
      id: entity.id,
      title: entity.title,
      mood: entity.mood,
      content: entity.content,
      createAt: entity.createAt,
      updateAt: entity.updateAt,
      isFav: entity.isFav
  );

  @override
  List<Object?> get props => [id, title, content, mood, createAt, title, isFav, updateAt];
}