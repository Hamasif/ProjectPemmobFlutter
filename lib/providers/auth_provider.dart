import 'package:flutter/material.dart';
import 'package:projectpemmob/models/user_model.dart';
import 'package:projectpemmob/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _user;  // Make _user nullable to avoid initialization error

  UserModel? get user => _user;

  set user(UserModel? user) {  // Nullable setter
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );

      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
