import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    _user = user;

    if (user != null) saveUser(user);

    Navigator.pushReplacementNamed(
      context,
      user != null ? "/home" : "/login",
    );
  }

  Future<void> saveUser(UserModel user) async {
    final shared = await SharedPreferences.getInstance();
    await shared.setString("user", user.toJson());
  }

  Future<void> currentUser(BuildContext context) async {
    final shared = await SharedPreferences.getInstance();

    await Future.delayed(Duration(seconds: 3));

    if (shared.containsKey("user")) {
      final json = shared.getString("user") as String;
      setUser(context, UserModel.fromJson(json));
      return;
    }

    setUser(context, null);
  }
}
