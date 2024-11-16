
import 'package:flutter/cupertino.dart';
import '../Service/UserService.dart';
import '../Model/UserModel.dart';

class Provideruser extends ChangeNotifier
{
  bool? status;

  postuserSignup({required email, required password, name, phone})async
  {
    Usermodel mod= await Userservices.signup(email:email,password:password,phone:phone,name:name);
    status= mod.status;
    notifyListeners();
  }

  postuserLogin({required email,password})async
  {
    Usermodel mod = await Userservices.signup(email: email, password: password);
    notifyListeners();
  }

}