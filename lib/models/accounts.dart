import 'account.dart';
import 'package:flutter/foundation.dart';

class Accounts with ChangeNotifier {
  List<Account> _accounts = [
    Account(
        id: '2',
        account_type: "Valorant",
        login_method: "GrimM1st",
        password: "samlai0605004",
        phoneNumber: "0122569114",
        nickname: "Nickname",
        created_on: DateTime.parse('2021-12-19T14:07:39.096379Z')),
    Account(
        id: '3',
        account_type: "Mobile Legend",
        login_method: "laizisenslzs@gmail.com",
        password: "laizisenslzs",
        phoneNumber: "0122569114",
        nickname: "Nickname",
        created_on: DateTime.parse("2021-12-19T14:08:23.946364Z"))
  ];

  int length() {
    return _accounts.length;
  }

  Account find_by_index(index) {
    return _accounts[index];
  }
}
