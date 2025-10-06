import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/domain/model/ui/JD_ui_tag_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@Entity(tableName: KEY_TAG_TABLE, primaryKeys: ['id'])
class JdTagEntity extends Equatable {

  JdTagEntity({
    this.id = '',
    this.name = '',
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';

  factory JdTagEntity.mapFromUi(JdTagUiEntity entity) => JdTagEntity(
    id: entity.id,
    name: entity.name
  );

  @override
  List<Object?> get props => [id, name];
}