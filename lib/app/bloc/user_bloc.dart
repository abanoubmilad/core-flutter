import 'dart:async';

import 'package:core_app/app/base/bloc.dart';
import 'package:core_app/app/config/environment.dart';
import 'package:core_app/app/model/response/userDto.dart';
import 'package:core_app/app/service/Api.dart';
import 'package:core_app/app/service/userService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class UserBloc extends ChangeNotifier with Bloc {
  final service = UserService(buildDio(),
      baseUrl: FlavorConfig.instance.variables[envKeyBaseApiUrl]);

  final _controller = StreamController<UserDto>();

  Stream<UserDto> get stream => _controller.stream;

  fetch(String id) {
    service.getById(id);
  }

  @override
  void dispose() {
    disposeBloc();
    _controller.close();
    super.dispose();
  }
}
