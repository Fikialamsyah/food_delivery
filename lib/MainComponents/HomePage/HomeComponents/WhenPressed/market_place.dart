import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../constants.dart';
import 'FavoriteDisekitarmu/fav1.dart';
import 'FavoriteDisekitarmu/fav2.dart';
import 'FavoriteDisekitarmu/fav3.dart';

class MarketPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kembali', style: TextStyle(color: Colors.white),),
        backgroundColor: Hexcolor(bgKolor),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 110),
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
                    },),
                    GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                    GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                    GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Hexcolor("#000").withOpacity(0.2),
                        ),
                      ],
                    ),
                        child: FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.fastfood),
                            label: Text('Daftar Makanan'),
                        )
                    ),
                    GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                    GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                    GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                    GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                    GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                    GridViewFunction(image: "assets/images/image_2.png", press: () {},),
                  ],
                ),
              ),
            ],
          ),
        ),
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



