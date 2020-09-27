import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/home/components/body.dart';



class HomeScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: 
        IconButton(icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: (){}
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          // By default our icon color is white
        ), 
        onPressed: () {},
        ),
        IconButton(
            icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          // By default our icon color is white
        ), 
        onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2,)
        ],
    );
  }
}