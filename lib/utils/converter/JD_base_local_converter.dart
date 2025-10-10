abstract class JDBaseLocalConverter<JdLocalDataEntity, JdUi> {
  JdUi convertFromLocalDataEntity(JdLocalDataEntity entity);

  JdUi convertToUIFromDataEntity(JdLocalDataEntity entity) => convertFromLocalDataEntity(entity);

  List<JdUi> convertToListUIFromListDataEntity(List<JdLocalDataEntity> data) => data.map((e) => convertFromLocalDataEntity(e)).toList();
}
