import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/MainComponents/HomePage/HomeComponents/rekomendasi_food.dart';
import 'package:food_delivery/MainComponents/HomePage/HomeComponents/title_card.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../constants.dart';
import 'favorit_disekitar.dart';
import 'header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(size: size),
          TitleCard(title: "Rekomendasi Untukmu", gedeText: 16,),
          RekomendasiFoodUntukmu(),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defPadding),
            child: Container(
              height: 1.0,
              width: size.width,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 40),
          TitleCard(title: "favorit di sekitarmu", gedeText: 16,),
          FavoritDisekitar()
        ],
      ),
    );
  }
}

