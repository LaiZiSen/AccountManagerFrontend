import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/accounts.dart';
import '../widget/account_item.dart';

class List_Screen extends StatelessWidget {
  static const route_name = '/list_screen';

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var safePadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              alignment: Alignment.center,
              child: Text(
                'Acccount List',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Container(
              height: deviceHeight - safePadding - 50,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: Provider.of<Accounts>(context).length(),
                  itemBuilder: (ctx, index) {
                    return Account_Item(index);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
