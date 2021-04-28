import 'package:flutter/material.dart';
import 'package:id_master/shared/constants.dart';
import 'package:id_master/screens/home/CustomTextFeild.dart';
import 'package:id_master/screens/home/CustomDialougeBox.dart';
import 'package:id_master/screens/home/home.dart';


class InfoAddition extends StatelessWidget {
  // This widget is the root of your application.
  String Name;
  String Id;
  String Address;
  double PhoneNo;
  DatabaseHelper _dbhelper = new DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card Registration',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title : Text(
            'Card Registration',
          style: TextStyle(
            fontSize: 29,
    ),
    ),
        ),
          body: SafeArea(
          child: Column(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  child: Column(
                    children: [
                      CustomTextField(
                        hintName: "Enter Cardholder's Name",
                        onChanged: (value) => {Name = value},
                        keyboardTypeNumber: false,
                      ),
                      CustomTextField(
                        hintName: "Enter Id Number",
                        onChanged: (value) => {Id = value},
                        keyboardTypeNumber: false,
                      ),
                      CustomTextField(
                        hintName: "Enter Address",
                        onChanged: (value) => {Address = value},
                        keyboardTypeNumber: false,
                      ),
                      CustomTextField(
                        hintName: "Enter phone No.",
                        onChanged: (value) =>
                        {PhoneNo = double.parse(value)},
                        keyboardTypeNumber: true,
                      ),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () async {
                            if (Name != null &&
                                Id != null &&
                                Address != null &&
                                PhoneNo != null) {
                              UserData _userData = UserData(
                                userName: Name,
                                cardNumber: Id,
                                cardExpiry: Address,
                                totalAmount: PhoneNo,
                              );

                              await _dbhelper.insertUserDetails(_userData);

                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return CustomDialog(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Home()))
                                            .then((value) => {});
                                      },
                                      title: "Success",
                                      isSuccess: true,
                                      description:
                                      "Thanking for adding your card details",
                                      buttonText: "Ok",
                                      addIcon: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 50,
                                      ),
                                    );
                                  });
                            } else {
                              print("Fail to insert");
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
