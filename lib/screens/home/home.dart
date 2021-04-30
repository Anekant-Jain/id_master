import 'package:flutter/material.dart';
import 'package:id_master/services/auth.dart';
import 'package:id_master/shared/constants.dart';
import 'package:id_master/screens/authenticate/register.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  static String pfullname = RegisterState.fullname;
  String pemail = RegisterState.email;
  String pphone = RegisterState.phone;
  String page = RegisterState.age;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('ID Master'),
          backgroundColor: Colors.green[500],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: Container(
            child: Column(
            children: <Widget>[
              Text(
              "NAME",
              style: TextStyle(

                color: Colors.grey[800],
                fontSize: 16 ,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
            ),

            Text(
              "$pfullname",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16 ,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
            Text(
              "PHONE NUMBER",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16 ,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
            ),
            Text(
              "$pphone",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16 ,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
            Text(
              "AGE",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16 ,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
            ),
            Text(
              "$page",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16 ,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
            Text(
              "ADDRESS",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16 ,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
            ),
            Text(
              "9211",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16 ,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
            Text(
              "EMAIL ADDRESS",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16 ,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
              ),
            ),
            Text(
              "$pemail",
              style: TextStyle(
                color: kTextColor,
                fontSize: 16 ,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),

    ),

    );
  }
}