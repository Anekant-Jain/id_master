import 'package:id_master/models/user.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:id_master/screens/authenticate/authenticate.dart';
import 'package:id_master/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return Home();
    }

  }
}