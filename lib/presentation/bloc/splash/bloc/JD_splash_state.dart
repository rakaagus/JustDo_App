import 'package:justdo_mini_project/domain/model/ui/ui_data_entity.dart';
import 'package:justdo_mini_project/domain/model/ui/ui_info_app.dart';
import 'package:justdo_mini_project/utils/base/base_bloc_event.dart';

class ReturnSessionState extends ReturnDataState<bool> {
  ReturnSessionState(UIDataEntity<bool> entity): super(entity);
}

class ReturnAppInfoState extends ReturnDataState<UIAppInfoEntity> {
  ReturnAppInfoState(UIDataEntity<UIAppInfoEntity> entity) : super(entity);
}