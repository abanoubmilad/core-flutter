import 'package:core_app/app/UserManager.dart';
import 'package:core_app/app/base/bloc.dart';
import 'package:core_app/app/bloc/toast.dart';
import 'package:core_app/app/config/environment.dart';
import 'package:core_app/app/extentions/dart_ext.dart';
import 'package:core_app/app/model/request/forgetPasswordRequest.dart';
import 'package:core_app/app/model/request/registerRequest.dart';
import 'package:core_app/app/model/response/userProfileDto.dart';
import 'package:core_app/app/service/Api.dart';
import 'package:core_app/app/service/accountService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class AuthNotifier extends ChangeNotifier with Bloc {
  final service = AccountService(buildDio(),
      baseUrl: FlavorConfig.instance.variables[envKeyBaseApiUrl]);

  static final FacebookLogin facebookSignIn = FacebookLogin();

  bool isLoggedIn = false;

  @override
  void dispose() {
    disposeBloc();
    super.dispose();
  }

  void init() async {
    isLoggedIn = await UserManager.instance.isLoggedIn();
    notifyListeners();
  }

  Future<Toast> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 1));
    // todo remove this
    var userProfile = new UserProfileDto()
      ..id = "ranom-id"
      ..role = "Admin"
      ..email = "mrbono@gmail.com"
      ..fullName = "this is my name"
      ..photoUrl =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsQ58sGP14AOOY9S1AEb4ntTlrITju61qDldK9Kjni-flONbWQ&s"
      ..token = "token"
      ..emailConfirmed = true
      ..nationalId = "32432423432423"
      ..phoneNumber = "01283982938"
      ..verified = true;
    _saveUser(userProfile);
    return Toast();
  }

  _saveUser(UserProfileDto userProfile) {
    UserManager.instance.saveUser(userProfile);
    isLoggedIn = true;
    notifyListeners();
  }

//  Future<Toast> login(String email, String password) {
//    return service
//        .login(LoginRequest()
//          ..email = email
//          ..password = password)
//        .then((response) {
//      _saveUser(response.data);
//      return Toast();
//    }).catchError((Object obj) {
//      final response = (obj.runtimeType as DioError)?.response;
//      if (response != null && response.statusCode == 401) {
//        return Toast()..addError("Invalid email or password.");
//      } else if (response != null && response.statusCode == 403) {
//        return Toast()
//          ..addError(
//              "Too many login attempts account will locked for afew minutes, please try again later.");
//      } else {
//        return Toast()..addSomethingWentWrongMessage();
//      }
//    });
//  }

  Future<Toast> register(String email, String password, String fullName,
      String nationalId, String phoneNumber) {
    return service
        .register(RegisterRequest()
          ..email = email
          ..password = password
          ..fullName = fullName
          ..nationalId = nationalId
      ..phoneNumber = phoneNumber)
        .then((response) {
      _saveUser(response.data);
      return Toast();
    }).catchError((Object obj) {
      if (serviceErrorToCode(obj) == 400)
        return Toast()
          ..addError("Email is already registered, try login.");

      return Toast()
        ..addSomethingWentWrongMessage();
    });
  }

  Future<Toast> forgetPassword(String email) {
    return service
        .forgetPassword(ForgetPasswordRequest()
      ..email = email)
        .then((response) {
      return Toast()
        ..addMessage("Email will be sent.");
    }).catchError((Object obj) {
      final code = serviceErrorToCode(obj);
      if (code == 400 || code == 401)
        return Toast()
          ..addError(
              "Too many attempts you will be locked for afew minutes, please try again later.");

      return Toast()
        ..addSomethingWentWrongMessage();
    });
  }

  void logout() {
    UserManager.instance.clearUser();
    isLoggedIn = false;
    notifyListeners();
  }

  Future<Toast> loginFacebook() async {
    await Future.delayed(Duration(seconds: 1));
    return Toast()
      ..addError('fb clicked man! yupppy!!');

//  fireMessage("fb clicked man! yupppy!!");
//    final FacebookLoginResult result =
//    await facebookSignIn.logIn(['email', 'public_profile']);
//
//    switch (result.status) {
//      case FacebookLoginStatus.loggedIn:
//        final FacebookAccessToken accessToken = result.accessToken;
//        return Toast().addError('''
//         Logged in!
//
//         Token: ${accessToken.token}
//         User id: ${accessToken.userId}
//         Expires: ${accessToken.expires}
//         Permissions: ${accessToken.permissions}
//         Declined permissions: ${accessToken.declinedPermissions}
//         ''');
//        break;
//      case FacebookLoginStatus.cancelledByUser:
//      //  toast.fireError('Login cancelled by the user.');
//        break;
//      case FacebookLoginStatus.error:
//      //    toast.fireError('Something went wrong with the login process.\n'
//      //         'Here\'s the error Facebook gave us: ${result.errorMessage}');
//        break;
//    }
  }
}
