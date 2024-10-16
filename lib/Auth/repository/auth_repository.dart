import 'dart:convert';

import 'package:alison_task/Core/constants/api_constants.dart';
import 'package:alison_task/Core/failure/failure.dart';
import 'package:alison_task/model/usermodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:fpdart/fpdart.dart';

import '../../Core/Commone/failure.dart';

final authRepositoryProider = Provider(
  (ref) => AuthRepository(),
);

class AuthRepository {


  Future<Either<Failure, UserModel>> loginUser(
      {required String email, required String password}) async {
    try {
      var request = http.Request(
          'POST',
          Uri.parse(
              '${ApiConstants.baseUrl}login?email_phone=$email&password=$password'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final n =
        jsonDecode(await response.stream.bytesToString());
      print(n['customerdata']);
        final UserModel userModel = UserModel.fromMap(n['customerdata']);
        print('lllllllllllllllllll${userModel.mobile}');
        return right(userModel);
      } else {
        print(response.reasonPhrase);
        return left(Failure(response.reasonPhrase ?? ''));
      }
      // return right( '');
    } catch (e) {
      print(e.toString());
      return left(Failure(e.toString()));
    }
  }


}
