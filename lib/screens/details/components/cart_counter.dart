import 'package:flutter/material.dart';

import '../../../constants.dart';


class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}


class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutLineButton(
          icon: Icons.remove,
          press: () {
           if (numOfItems > 1){
              setState(() {
              numOfItems--;
            });
           }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            // if our item less than 10 then it show 01 02 like that 
            numOfItems.toString().padLeft(2,"0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutLineButton(
          icon: Icons.add, 
          press: () {
            setState(() {
              numOfItems++;
            });
          }),
      ],
    );
  }

  SizedBox buildOutLineButton({IconData icon, Function press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlineButton(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          onPressed: press,
          child: Icon(icon),
        ),
      );
  }
}