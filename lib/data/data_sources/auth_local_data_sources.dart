import 'dart:convert';

import 'package:flutter_siakad_app/data/models/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDataSources {
  Future<bool> saveAuthData(AuthResponseModel model) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final res = await pref.setString('auth', model.toJson());
    // final res = await pref.setString('auth', jsonEncode(model.toJson()));
    return res;
  }

  Future<String> getToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final jsonString = pref.getString('auth') ?? '';
    final authData = AuthResponseModel.fromJson(jsonString);
    // final authData = AuthResponseModel.fromJson(jsonDecode(authJson));
    return authData.jwtToken;
  }

  Future<bool> removeToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final res = await pref.remove('auth');
    return res;
  }

  Future<bool> isLogin() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    return authJson.isNotEmpty;
  }

  Future<AuthResponseModel> getUser() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final jsonString = pref.getString('auth') ?? '';
    final authData = AuthResponseModel.fromJson(jsonString);
    return authData;
  }

  Future<int> getUserId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    final authJson = pref.getString('auth') ?? '';
    final authData = AuthResponseModel.fromJson(jsonDecode(authJson));
    return authData.user.id;
  }
}
