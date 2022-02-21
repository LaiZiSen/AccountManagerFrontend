import 'package:flutter/material.dart';

import './list_screen.dart';

Widget TextField_(context, String hintText, TextEditingController controller,
    FocusNode focusNode, FocusNode nextField) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
    child: TextField(
      focusNode: focusNode,
      controller: controller,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
      onSubmitted: (_) {
        if (nextField != null) {
          FocusScope.of(context).requestFocus(nextField);
        }
      },
    ),
  );
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();
  var test = "test";

  @override
  void initState() {
    super.initState();
    _email.addListener(() {});
    _password.addListener(() {});
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void enter() {
    // showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         content: Text("Email: ${_email.text} Password: ${_password.text}"),
    //       );
    //     });
    Navigator.of(context).pushNamed(List_Screen.route_name);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      //appBar: appBar,
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 105,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                radius: 55,
                child: Icon(
                  Icons.person,
                  size: 75,
                  color: Colors.white,
                ),
              ),
            ),
            TextField_(context, 'Email', _email, null, _passwordFocusNode),
            TextField_(
                context, 'Password', _password, _passwordFocusNode, null),
            Container(
              padding: EdgeInsets.only(),
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  enter();
                },
                child: Text("Enter"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
