import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justdo_mini_project/presentation/bloc/splash/bloc/JD_splash_bloc.dart';
import 'package:justdo_mini_project/utils/base/base_bloc_event.dart';
import 'package:justdo_mini_project/utils/base/base_config.dart';
import 'package:justdo_mini_project/utils/base/base_stateful_widget.dart';

class JdSplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: BaseConfig.name,
    home: SplashScreenPage(),
    theme: ThemeData(
        useMaterial3: false,
        pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder()
            }
        ),
        textTheme: Theme.of(context).textTheme.apply(
            fontFamily: "Raleway"
        )
    ),
  );
}

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<StatefulWidget> createState() => SplashScreenPageState();
}

class SplashScreenPageState extends BaseStatefulWidget<SplashBloc, BaseBlocEvent> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  Widget drawBody() {
    // TODO: implement drawBody
    throw UnimplementedError();
  }

  @override
  void initBlocState(BuildContext context, BaseBlocState state) {
    // TODO: implement initBlocState
  }
}

