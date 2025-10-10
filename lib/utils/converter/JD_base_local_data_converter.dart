abstract class JdBaseLocalDataConverter<JdLocalData, JdUi> {

  JdUi convertToUI(JdLocalData localData);

  JdLocalData convertToLocalData(JdUi entity);

}