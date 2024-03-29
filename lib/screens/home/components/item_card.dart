
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: press,
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
                    child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // for demo we use fixed height and width
              // now we don't need them
              // height: 180,
              // width: 160,
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
               // products is out demo list
              product.title,
              style: TextStyle(color: KTextLightColor
              ),
            ),
          ), 
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

