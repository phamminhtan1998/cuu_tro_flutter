import 'package:cuu_tro_flutter/common/shpre_account_key.dart';
import 'package:cuu_tro_flutter/dao/entity/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_isolate/flutter_isolate.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceCtrl extends GetxController{
  var account =  new Account().obs;

  SharedPreferences sharedPreferences;
  @override
  void onInit() async{
     sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> saveAccount(Account accountSrc) async{
      sharedPreferences.setString(ShpreAccountKey.fullName,accountSrc.fullName );
      sharedPreferences.setString(ShpreAccountKey.accountIdf,accountSrc.accountIdf==null?"":accountSrc.accountIdf);
      sharedPreferences.setString(ShpreAccountKey.avatarUrl,accountSrc.avatarUrl );
      sharedPreferences.setString(ShpreAccountKey.pushToken,accountSrc.pushToken);
      sharedPreferences.setString(ShpreAccountKey.playerId,accountSrc.playerId);
      sharedPreferences.setString(ShpreAccountKey.phoneNumber,accountSrc.phoneNumber);
      sharedPreferences.setString(ShpreAccountKey.accountType,accountSrc.accountType);
      sharedPreferences.setDouble(ShpreAccountKey.dob,accountSrc.dob );
      sharedPreferences.setDouble(ShpreAccountKey.lat,accountSrc.lat);
      sharedPreferences.setDouble(ShpreAccountKey.lon,accountSrc.lon);
      account.value =accountSrc;

  }

  Future<void> getAccount()async{
    Account accountSrc = new Account();
    accountSrc.fullName= sharedPreferences.get(ShpreAccountKey.fullName);
    accountSrc.accountIdf= sharedPreferences.get(ShpreAccountKey.accountIdf);
    accountSrc.avatarUrl= sharedPreferences.get(ShpreAccountKey.avatarUrl);
    accountSrc.pushToken= sharedPreferences.get(ShpreAccountKey.pushToken);
    accountSrc.playerId= sharedPreferences.get(ShpreAccountKey.playerId);
    accountSrc.phoneNumber= sharedPreferences.get(ShpreAccountKey.phoneNumber);
    accountSrc.accountType= sharedPreferences.get(ShpreAccountKey.accountType);
    accountSrc.dob= sharedPreferences.get(ShpreAccountKey.dob);
    accountSrc.lat= sharedPreferences.get(ShpreAccountKey.lat);
    accountSrc.lon= sharedPreferences.get(ShpreAccountKey.lon);
    account.value = accountSrc;

  }
  Future<void> removeAccount() async{
    sharedPreferences.remove(ShpreAccountKey.fullName);
    sharedPreferences.remove(ShpreAccountKey.accountIdf);
    sharedPreferences.remove(ShpreAccountKey.avatarUrl);
    sharedPreferences.remove(ShpreAccountKey.pushToken);
    sharedPreferences.remove(ShpreAccountKey.playerId);
    sharedPreferences.remove(ShpreAccountKey.phoneNumber);
    sharedPreferences.remove(ShpreAccountKey.accountType);
    sharedPreferences.remove(ShpreAccountKey.dob);
    sharedPreferences.remove(ShpreAccountKey.lat);
    sharedPreferences.remove(ShpreAccountKey.lon);
  }
}