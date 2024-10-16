import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/usermodel.dart';

class CurrentUser extends Notifier<UserModel?>{
  @override
  UserModel? build() {
    return null;

  }
  void updateUserModer({required UserModel usermodel}){
    state=usermodel;
  }

}
final currentuserPovider=NotifierProvider<CurrentUser,UserModel?>(() => CurrentUser(),);
