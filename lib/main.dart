import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/models/account.dart';
import 'package:provider/provider.dart';

import './models/accounts.dart';
import './models/account_types.dart';
import './screens/login_screen.dart';
import './screens/list_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Accounts>(create: (_) => Accounts()),
        ChangeNotifierProvider<Account_Types>(
          create: (_) => Account_Types(),
        )
      ],
      child: MaterialApp(
        title: 'Account Manager',
        theme: ThemeData(
            primaryColor: Colors.blue[400],
            fontFamily: 'Proxima',
            textTheme: const TextTheme(
                headline1:
                    TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
                headline2: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w300,
                    color: Colors.black))),
        home: LoginScreen(),
        routes: {
          List_Screen.route_name: (ctx) => List_Screen(),
        },
      ),
    );
  }
}
