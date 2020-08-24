import 'package:core_app/app/UserManager.dart';
import 'package:core_app/app/base/bloc.dart';
import 'package:core_app/app/config/environment.dart';
import 'package:core_app/app/model/response/userProfileDto.dart';
import 'package:core_app/app/service/Api.dart';
import 'package:core_app/app/service/accountService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class ProfileBloc extends ChangeNotifier with Bloc {
  AccountService service;

  UserProfileDto profile;
  bool loading = true;

  @override
  void dispose() {
    disposeBloc();
    super.dispose();
  }

  void init() async {
    await Future.delayed(Duration(seconds: 3));
    profile = await UserManager.instance.getUser();
    this.service = AccountService(
        buildDio(auth: "Bearer ${profile.token}"),
        baseUrl: FlavorConfig.instance.variables[envKeyBaseApiUrl]);
    loading = false;
    notifyListeners();
  }
}
