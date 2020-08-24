import 'dart:convert';

import 'package:core_app/app/config/shared_preferences_keys.dart';
import 'package:core_app/app/model/response/userDto.dart';
import 'package:core_app/app/model/response/userProfileDto.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserManager {
  UserManager._privateConstructor();

  static final UserManager instance = UserManager._privateConstructor();

  UserProfileDto _user;

  Future<bool> isLoggedIn() async {
    if (_user == null) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var userJson = prefs.getString(sharedPrefKeyUser);
      if (userJson == null || userJson.isEmpty) return false;

      this._user = UserProfileDto.fromJson(jsonDecode(userJson));
    }
    return checkIsLogged(_user);
  }

  bool checkIsLogged(UserProfileDto userProfileDto) {
    return userProfileDto != null &&
        userProfileDto.token != null &&
        userProfileDto.token.isNotEmpty;
  }

  Future<UserProfileDto> getUser() async {
    return await isLoggedIn() ? _user : null;
  }

  void saveUser(UserProfileDto _user) async {
    this._user = _user;
    await _persistUser(_user);
  }

  void clearUser() async {
    this._user = null;
    await _clearUser();
  }

  void update(UserDto _user) async {
    this._user
      ..id = _user.id
      ..role = _user.role
      ..email = _user.email
      ..fullName = _user.fullName
      ..photoUrl = _user.photoUrl
      ..emailConfirmed = _user.emailConfirmed
      ..nationalId = _user.nationalId
      ..phoneNumber = _user.phoneNumber
      ..verified = _user.verified;

    await _persistUser(_user);
  }

  Future _persistUser(UserProfileDto _user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(sharedPrefKeyUser, jsonEncode(_user.toJson()));
  }

  Future _clearUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(sharedPrefKeyUser);
  }
}
