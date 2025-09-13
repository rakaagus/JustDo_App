import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:justdo_mini_project/utils/base/base_bloc_event.dart';
import 'package:justdo_mini_project/utils/colors.dart';

abstract class BaseStatefulWidget<BLOC extends Bloc<EVENT, BaseBlocState>, EVENT extends Equatable> extends State<StatefulWidget>{

  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isUseAppBar = false;
  late BLOC bloc;

  Widget? rightIcon;

  @required
  Widget drawBody();

  @required
  String getTitleLabel() => "";

  @required
  bool isAppBarTitleCenter() => true;

  @required
  void initBlocState(BuildContext context, BaseBlocState state);

  @override
  Widget build(BuildContext context) {
    if (isUseAppBar) {
      return Scaffold(
        key: scaffoldKey,
        appBar: _generateAppBar(),
        body: _generateBody(),
        floatingActionButton: generateFloatingActionButton(),
        floatingActionButtonLocation: setFloatingActionButtonPosition(),
      );
    } else {
      if (generateBottomBar() != null) {
        return Scaffold(
          body: _generateBody(),
          bottomNavigationBar: generateBottomBar(),
          floatingActionButton: generateFloatingActionButton(),
          floatingActionButtonLocation: setFloatingActionButtonPosition(),
        );
      } else {
        return Scaffold(
          body: _generateBody(),
          floatingActionButton: generateFloatingActionButton(),
          floatingActionButtonLocation: setFloatingActionButtonPosition(),
        );
      }
    }
  }

  @required
  Widget? generateBottomBar() {
    return null;
  }

  @required
  PreferredSizeWidget? generateTab() {
    return null;
  }

  @required
  Widget? generateFloatingActionButton() {
    return null;
  }

  @required
  FloatingActionButtonLocation? setFloatingActionButtonPosition() {
    return null;
  }

  PreferredSizeWidget _generateAppBar() {
    if (rightIcon == null) {
      return AppBar(
        elevation: 1,
        title: Text(
          getTitleLabel(),
          style: TextStyle(
              color: JDColorLightTheme.mainPurpleColor
          ),
        ),
        centerTitle: isAppBarTitleCenter(),
        bottom: generateTab(),
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: JDColorLightTheme.textColor),
      );
    } else {
      return AppBar(
        elevation: 1,
        title: Text(
          getTitleLabel(),
          style: TextStyle(
              color: JDColorLightTheme.textColor
          ),
        ),
        bottom: generateTab(),
        actions: [
          rightIcon ?? Container()
        ],
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: JDColorLightTheme.textColor),
      );
    }
  }

  Widget _generateBody() {
    return BlocProvider<BLOC>(
      create: (context) => bloc,
      child: BlocListener<BLOC, BaseBlocState>(
        listener: (context, state) {
          initBlocState(context, state);
        },
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Container(color: Colors.white, child: drawBody()),
          ),
        ),
      ),
    );
  }
}