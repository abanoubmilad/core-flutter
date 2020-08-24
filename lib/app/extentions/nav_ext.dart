import 'package:core_app/app/bloc/auth_notifier.dart';
import 'package:core_app/app/extentions/context_ext.dart';
import 'package:core_app/app/ui/home/profile_home_page.dart';
import 'package:core_app/app/ui/home/settings_home_page.dart';
import 'package:core_app/app/ui/home/users/users_page.dart';
import 'package:core_app/app/ui/login/forget_password_page.dart';
import 'package:core_app/app/ui/login/login_page.dart';
import 'package:flutter/material.dart';

const ROUTE_LOGIN = "/login";
const ROUTE_REGISTER = "/register";
const ROUTE_HOME = "/";
const ROUTE_SETTINGS = "/settings";
const ROUTE_FORGET = "/forget";
const ROUTE_USERS = "/users";

Map<String, WidgetBuilder> buildAppRoutes() {
  return <String, WidgetBuilder>{
    ROUTE_LOGIN: _handleDefaultRoute(),
    ROUTE_REGISTER: _handleDefaultRoute(),
    ROUTE_HOME: _handleDefaultRoute(),
    ROUTE_FORGET: (BuildContext context) => ForgetPasswordPage(),
    ROUTE_SETTINGS: _handleGuardedRoute(() => SettingsPage()),
    ROUTE_USERS: _handleGuardedRoute(() => UsersPage()),
  };
}

WidgetBuilder _handleGuardedRoute(Function destinationBuilder) =>
        (BuildContext context) =>
    provider<AuthNotifier>(context).isLoggedIn
        ? destinationBuilder()
        : LoginPage();

WidgetBuilder _handleDefaultRoute() => _handleGuardedRoute(() => ProfilePage());

navigateMenu(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.pushReplacementNamed(context, ROUTE_USERS);
      break;
    case 4:
      Navigator.pushReplacementNamed(context, ROUTE_SETTINGS);
      break;
  }
}
