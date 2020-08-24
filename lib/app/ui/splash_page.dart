//import 'dart:async';
//
//import 'package:core_app/app/bloc/account_bloc.dart';
//import 'package:core_app/app/extentions/ui_funcs.dart';
//
//import 'package:core_app/app/ui/base/base_page.dart';
//import 'package:core_app/app/ui/home/profile_home_page.dart';
//import 'package:core_app/app/ui/login/login_page.dart';
//import 'package:flutter/material.dart';
//
//import '../extentions/nav_ext.dart';
//
//class SplashPage extends StatefulWidget {
//  @override
//  _SplashPageState createState() => _SplashPageState();
//}
//
//class _SplashPageState extends BaseState<AccountBloc, SplashPage> {
//  @override
//  AccountBloc buildBloc() => AccountBloc();
//
//  @mustCallSuper
//  @override
//  void initState() {
//    super.initState();
//
//    bloc.streamSuccess.listen((isUserLoggedIn) {
//      Timer(Duration(seconds: 2), () {
//        if (isUserLoggedIn) {
//          context.navigateReplace(ProfilePage());
//        } else {
//          context.navigateReplace(LoginPage());
//        }
//      });
//    });
//
//    // bloc.checkIfUserIsLoggedIn();
//  }
//
//  @override
//  Widget buildRoot(BuildContext context) {
//    return Container(
//      width: MediaQuery
//          .of(context)
//          .size
//          .width,
//      decoration: BoxDecoration(
//        gradient: LinearGradient(
//            colors: [bgGradientStart, bgGradientEnd],
//            begin: const FractionalOffset(0, 0),
//            end: const FractionalOffset(1, 1),
//            stops: [0, 1],
//            tileMode: TileMode.clamp),
//      ),
//      child: _buildParentColumn(context),
//    );
//  }
//
//  Column _buildParentColumn(BuildContext context) {
//    return Column(
//      mainAxisSize: MainAxisSize.min,
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        buildAppLogo(200, 200),
//      ],
//    );
//  }

//}LayoutBuilder(
//            builder:
//                (BuildContext context, BoxConstraints viewportConstraints) {
//              return SingleChildScrollView(
//                child: ConstrainedBox(
//                    constraints: BoxConstraints(
//                      minHeight: viewportConstraints.maxHeight,
//                    ),
//                    child:



