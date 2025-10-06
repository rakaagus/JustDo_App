import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/domain/model/ui/JD_ui_category_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@Entity(tableName: KEY_CATEGORY_TODO_TABLE, primaryKeys: ['id'])
class JdCategoryEntity extends Equatable {

  JdCategoryEntity({
    this.id = '',
    this.name = '',
    this.colorHex = ''
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';
  @ColumnInfo(name: KEY_COL_COLOR_HEX) String colorHex = '';

  factory JdCategoryEntity.mapFromUi(JdCategoryUiEntity entity) => JdCategoryEntity(
    id: entity.id,
    name: entity.name,
    colorHex: entity.colorHex
  );

  @override
  List<Object?> get props => [id, name, colorHex];
}