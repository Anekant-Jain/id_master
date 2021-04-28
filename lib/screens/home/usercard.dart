import 'package:flutter/material.dart';
import 'package:id_master/shared/constants.dart';


class UserCard extends StatefulWidget {
  final String cardType, cardNumber, cardExpiryDate, cardHolderName;


  UserCard({
    Key key,
    @required this.cardNumber,
    @required this.cardHolderName,
    @required this.cardType,
    @required this.cardExpiryDate,

  });

  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
@override
Widget build(BuildContext context) {
  var widget;
  return Container(
    margin: const EdgeInsets.only(right: kDefaultPadding / 2),
    height: 199,
    width: 344,
    decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.all(
          Radius.circular(28),
        )),
    child: Stack(
      children: [
        Positioned(
          left: 29,
          top: 30,
          child: Text(
            widget.cardType,
            style: Theme.of(context).textTheme.subtitle2.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              letterSpacing: .5,
              fontSize: 12,
            ),
          ),
        ),
        Positioned(
          left: 29,
          top: 49,
          child: Text(
            widget.cardNumber,
            style: Theme.of(context).textTheme.headline6.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: .5,
              fontSize: 15,
            ),
          ),
        ),
        Positioned(
          left: 29,
          bottom: 50,
          child: Text("NAME",
            style: Theme.of(context).textTheme.subtitle2.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              letterSpacing: .5,
              fontSize: 20,
            ),),
        ),
        Positioned(
          left: 29,
          bottom: 20,
          child: Text(
            widget.cardHolderName,
            style: Theme.of(context).textTheme.headline1.copyWith(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: .5,
            ),
          ),
        ),
        Positioned(
          right: 29,
          bottom: 50,
          child: Text(
            "VALID UPTO",
            style: Theme.of(context).textTheme.subtitle2.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: .5,
            ),
          ),
        ),

        Positioned(
          right: 29,
          bottom: 20,
          child: Text(
            widget.cardExpiryDate,
            style: Theme.of(context).textTheme.headline6.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: .5,
            ),
          ),
        ),
      ],
    ),
  );
}
}

