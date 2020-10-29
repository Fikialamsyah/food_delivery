import 'package:flutter/material.dart';
import 'package:food_delivery/MainComponents/HomePage/HomeComponents/WhenPressed/FavoriteDisekitarmu/fav1.dart';
import 'package:food_delivery/MainComponents/HomePage/HomeComponents/WhenPressed/FavoriteDisekitarmu/fav3.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../constants.dart';
import 'WhenPressed/FavoriteDisekitarmu/fav2.dart';

class FavoritDisekitar extends StatelessWidget {
  const FavoritDisekitar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                GridViewFunction(image: "assets/images/image_2.png",
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Fav1()));
                  },),
                GridViewFunction(image: "assets/images/image_2.png", press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Fav2()));
                },),
                GridViewFunction(image: "assets/images/image_2.png",press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Fav3()));
                },)
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                GridViewFunction(image: "assets/images/image_2.png", press: () {},)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GridViewFunction extends StatelessWidget {
  const GridViewFunction({
    Key key,
    this.image,
    this.press

  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: defPadding,
        bottom: 0,
      ),
      width: size.width * 0.5,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Hexcolor(primerKolor).withOpacity(0.23),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


