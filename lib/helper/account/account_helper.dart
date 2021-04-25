import 'package:cuu_tro_flutter/common/api_common.dart';
import 'package:cuu_tro_flutter/dao/entity/account.dart';
import 'package:dio/dio.dart';

class AccountHelper{
  static Future<void> getAll() async{
     var response = await new Dio().get(APICommon.baseUrl);
     List<dynamic> accounts = response.data;
     List<Account>acocunt_des= accounts.map((e) => Account.fromJson(e)).toList();
     for(Account acc in acocunt_des){
       print(acc.avatarUrl);
    }
  }
  static Future<Account> getById(String id ) async{
    var response = await new Dio().get(APICommon.baseUrl+"/"+id);
    Account account = Account.fromJson(response.data);
    return account;
  }
}