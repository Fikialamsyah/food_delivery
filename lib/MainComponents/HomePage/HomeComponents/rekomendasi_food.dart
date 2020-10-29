import 'package:flutter/material.dart';
import 'package:food_delivery/MainComponents/HomePage/HomeComponents/WhenPressed/RekomendasiUntukmu/rekom_2.dart';
import 'package:food_delivery/MainComponents/HomePage/HomeComponents/WhenPressed/RekomendasiUntukmu/rekom_3.dart';

import '../../../constants.dart';
import 'WhenPressed/RekomendasiUntukmu/rekom_1.dart';

class RekomendasiFoodUntukmu extends StatelessWidget {
  const RekomendasiFoodUntukmu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RekomendasiFoodCard(
            image: "assets/images/bottom_img_1.png",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Rekom1())
              );
            },
          ),
          RekomendasiFoodCard(
            image: "assets/images/bottom_img_2.png",
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Rekom2())
                );
              },
          ),
          RekomendasiFoodCard(
            image: "assets/images/bottom_img_2.png",
            press: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Rekom3())
              );
            },
          ),
        ],
      ),
    );
  }
}

class RekomendasiFoodCard extends StatelessWidget {
  const RekomendasiFoodCard({
    Key key,
    this.image,
    this.press
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: defPadding,
          top: defPadding / 2,
          bottom: defPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image)
            )
        ),
      ),
    );
  }
}

