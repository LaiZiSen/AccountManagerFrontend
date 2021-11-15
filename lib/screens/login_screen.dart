import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar appBar = AppBar(
  title: Text("Login"),
);

Widget TextField_(String hintText, TextEditingController controller) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
    child: TextField(
      controller: controller,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
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
            TextField_('Email', _email),
            TextField_('Password', _password),
            Container(
              padding: EdgeInsets.only(),
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(
                              "Email: ${_email.text} Password: ${_password.text}"),
                        );
                      });
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
