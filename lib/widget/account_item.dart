import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/account_types.dart';
import '../models/accounts.dart';
import '../models/account.dart';

class Account_Item extends StatelessWidget {
  final int index;

  Account_Item(this.index);

  @override
  Widget build(BuildContext context) {
    final Account account = Provider.of<Accounts>(context).find_by_index(index);
    final String imageLink =
        Provider.of<Account_Types>(context).imageLink(account.account_type);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: ListTile(
          onTap: () => {},
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
          leading: Container(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: ClipOval(
                child: Image.network(imageLink),
              ),
            ),
          ),
          title: Text(
            account.nickname,
            style: Theme.of(context).textTheme.headline2,
          ),
          subtitle: Text(account.account_type),
          trailing: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.arrow_forward_ios_rounded))),
    );
  }
}
