import 'package:flutter/material.dart';
import './screens/login_screen.dart';

import 'package:flutter/services.dart';

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

    return MaterialApp(
      title: 'Account Manager',
      theme: ThemeData(
          primaryColor: Colors.blue[400],
          fontFamily: 'Proxima',
          textTheme: const TextTheme(
              headline1:
                  TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold))),
      home: LoginScreen(),
    );
  }
}
