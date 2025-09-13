import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:justdo_mini_project/utils/colors.dart';

abstract class NewBaseStatefulStayAliveWidget<T extends StatefulWidget> extends State<T> with AutomaticKeepAliveClientMixin{

  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isUseAppBar = false;

  Widget? rightIcon;

  @required
  Widget drawBody();

  @required
  String getTitleLabel() => "";

  @required
  bool isAppBarTitleCenter() => false;

  @required
  List<BlocProvider> getListBloc(BuildContext context);

  @required
  Future<bool> onBackPressed() async {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    if (isUseAppBar) {
      return Scaffold(
          key: scaffoldKey,
          appBar: _generateAppBar(),
          body: _generateBody()
      );
    } else {
      if (generateBottomBar() != null) {
        return Scaffold(
          body: _generateBody(),
          bottomNavigationBar: generateBottomBar(),
        );
      } else {
        return Scaffold(
          body: _generateBody(),
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

  @override
  bool get wantKeepAlive => true;

  PreferredSizeWidget _generateAppBar() {
    if (rightIcon == null) {
      return AppBar(
        elevation: 1,
        title: Text(
          getTitleLabel(),
          style: TextStyle(
              color: JDColorLightTheme.textColor
          ),
        ),
        centerTitle: isAppBarTitleCenter(),
        bottom: generateTab(),
        backgroundColor: Colors.white,
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
        centerTitle: isAppBarTitleCenter(),
        bottom: generateTab(),
        actions: [
          rightIcon ?? Container()
        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: JDColorLightTheme.textColor),
      );
    }
  }

  Widget _generateBody() {
    return MultiBlocProvider(
      providers: getListBloc(context),
      child: Container(
        color: JDColorLightTheme.mainPurpleColor,
        child: SafeArea(
          child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white, child: drawBody()
          ),
        ),
      ),
    );
  }

}