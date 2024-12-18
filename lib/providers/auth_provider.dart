import 'package:flutter/material.dart';
import 'package:projectpemmob/models/user_model.dart';
import 'package:projectpemmob/services/auth_service.dart';


class AuthProvider with ChangeNotifier {
<<<<<<< HEAD
  late UserModel _user;
=======
  UserModel _user;
>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    String name,
    String username,
    String email,
    String password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;
      notifyListeners();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    String email,
    String password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );

      _user = user;
      notifyListeners();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
