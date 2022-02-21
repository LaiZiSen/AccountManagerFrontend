import 'package:flutter/cupertino.dart';

class Account with ChangeNotifier {
  final String id;
  final String account_type;
  final String login_method;
  final String password;
  final String phoneNumber;
  final String nickname;
  final DateTime created_on;

  Account({
    @required this.id,
    @required this.account_type,
    @required this.login_method,
    @required this.password,
    @required this.phoneNumber,
    @required this.nickname,
    @required this.created_on,
  });
}
