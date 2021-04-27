import 'package:flutter/material.dart';
import 'package:id_master/services/auth.dart';
import 'package:id_master/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:id_master/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}