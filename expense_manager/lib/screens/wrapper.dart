import 'package:flutter/material.dart';
import 'package:expense_manager/Screens/Home.dart';
import 'package:expense_manager/screens/authentication.dart';
import 'package:expense_manager/models/user.dart';
import 'package:provider/provider.dart';
class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user= Provider.of<User>(context);

    if (user == null)
      {
        return Authenticate();
      }
    else{
      return Home();
    }
  }
}
