import 'package:cuu_tro_flutter/getx/account/account.dart';
import 'package:cuu_tro_flutter/helper/account/account_helper.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{
  var account = new Account().obs;
  var loginStatus = false.obs;
  Future<bool> login(String accountIdf, String password) async{
     Account accountSrc =  await AccountHelper.getById("1");
     account.value = accountSrc;
     loginStatus.value = true;
     return true;
  }
}