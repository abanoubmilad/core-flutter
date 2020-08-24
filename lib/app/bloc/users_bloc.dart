import 'dart:async';

import 'package:core_app/app/base/bloc.dart';
import 'package:core_app/app/config/environment.dart';
import 'package:core_app/app/model/response/userDto.dart';
import 'package:core_app/app/service/Api.dart';
import 'package:core_app/app/service/userService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class UsersBloc extends ChangeNotifier with Bloc {
  final service = UserService(buildDio(),
      baseUrl: FlavorConfig.instance.variables[envKeyBaseApiUrl]);

  List<UserDto> users;
  bool loading = true;

  fetchAll() {
    service.get();
  }

  @override
  void dispose() {
    disposeBloc();
    super.dispose();
  }

  void init() async {
    await Future.delayed(Duration(seconds: 3));
    users = List();
    for (int i = 0; i < 25; i++) {
      users
        ..add(new UserDto()
          ..id = "ranom-id" + i.toString()
          ..role = "Admin"
          ..email = i.toString() + "mrbono@gmail.com"
          ..fullName = "this is my name"
          ..photoUrl =
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsQ58sGP14AOOY9S1AEb4ntTlrITju61qDldK9Kjni-flONbWQ&s"
          ..emailConfirmed = true
          ..nationalId = "32432423432423"
          ..phoneNumber = "01283982938"
          ..verified = true);
    }
    loading = false;
    notifyListeners();
  }
}
