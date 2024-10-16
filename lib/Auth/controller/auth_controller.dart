import 'package:alison_task/Auth/repository/auth_repository.dart';
import 'package:alison_task/Core/Commone/provider.dart';
import 'package:alison_task/model/usermodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Core/Commone/snackbar.dart';
import '../../Navigation/navScreen.dart';

final AuthControllerProvider = Provider(
  (ref) =>
      AuthController(repository: ref.watch(authRepositoryProider), ref: ref ),
);

class AuthController {
  final AuthRepository _repository;
  final Ref _ref;
  AuthController({required AuthRepository repository,required Ref ref})
      : _repository = repository,
        _ref = ref;

  Future<void> login(
      {required String email,
      required String password,
      required BuildContext context}) async {
    final res = await _repository.loginUser(email: email, password: password);
    res.fold(
      (l) => showSnackBar(context: context, content: l.message),
      (r) async {
        _ref.read(currentuserPovider.notifier).updateUserModer(usermodel: r);
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setString('token', r.token);
        pref.setString('id', r.id);
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => NavBar(),
          ),
          (route) => false,
        );
      },
    );
  }

}
