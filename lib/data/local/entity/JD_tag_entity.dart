import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:justdo_mini_project/data/local/entity/JD_todo_entity.dart';
import 'package:justdo_mini_project/domain/model/ui/JD_ui_tag_entity.dart';
import 'package:justdo_mini_project/utils/constant.dart';

@Entity(
    tableName: KEY_TAG_TABLE,
    foreignKeys: [
      ForeignKey(
          childColumns: [KEY_COL_TODO_ID],
          parentColumns: [KEY_COL_ID],
          entity: JdTodoEntity
      )
    ],
    primaryKeys: ['id']
)
class JdTagEntity extends Equatable {

  JdTagEntity({
    this.id = '',
    this.name = '',
    this.todoId = '',
  });

  @PrimaryKey(autoGenerate: true) @ColumnInfo(name: KEY_COL_ID) String id = '';
  @ColumnInfo(name: KEY_COL_NAME) String name = '';
  @ColumnInfo(name: KEY_COL_TODO_ID) String todoId = '';

  factory JdTagEntity.mapFromUi(JdTagUiEntity entity) => JdTagEntity(
    id: entity.id,
    name: entity.name,
    todoId: entity.todoId
  );

  @override
  List<Object?> get props => [id, name, todoId];
}