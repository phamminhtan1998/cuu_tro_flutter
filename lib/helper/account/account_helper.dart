import 'package:cuu_tro_flutter/common/api_common.dart';
import 'package:cuu_tro_flutter/getx/account/account.dart';
import 'package:dio/dio.dart';

class AccountHelper{
  static Future<List<Account>> getAll() async{
     var response = await new Dio().get(APICommon.baseUrl);
     List<dynamic> accounts = response.data;
     List<Account>accocunt_des= accounts.map((e) => Account.fromJson(e)).toList();
     return accocunt_des;
  }
  static Future<Account> getById(String id ) async{
    var response = await new Dio().get(APICommon.baseUrl+"/"+id);
    Account account = Account.fromJson(response.data);
    return account;
  }
}