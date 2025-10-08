import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:justdo_mini_project/presentation/bloc/splash/bloc/JD_splash_event.dart';
import 'package:justdo_mini_project/utils/base/base_bloc_event.dart';

class SplashBloc extends Bloc<BaseBlocEvent, BaseBlocState> {

  SplashBloc(): super(LoadingState()){
    on<DoLoadSessionEvent>((event, emit) async {});
    on<DoLoadAppInfoEvent>((event, emit) async {});
  }

}