import 'package:flutter/material.dart';
import 'package:expense_manager/services/auth.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),

      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text(
                "logout"

            ),
            onPressed: ()async{
              await _auth.signOut();

            },
          ),
          Text("hello from home")
        ],
      ),
    );
  }
}
