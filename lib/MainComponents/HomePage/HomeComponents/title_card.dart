import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({
    Key key, this.title, this.gedeText,
  }) : super(key: key);

  final String title;
  final double gedeText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defPadding),

      child: Column(
        children: <Widget>[
          Text(title.toUpperCase(),
            style: TextStyle(
                color: Colors.white,
                fontSize: gedeText,
                fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),

    );
  }
}

