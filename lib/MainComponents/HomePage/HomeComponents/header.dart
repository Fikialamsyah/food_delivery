import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../constants.dart';
import 'WhenPressed/kupon.dart';
import 'WhenPressed/market_place.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defPadding * 2.5),
      height: defPadding * 9 + 15,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: defPadding,
              bottom: defPadding,
              right: 36 + defPadding,
            ),
            height: defPadding * 8 + 10,
            decoration: BoxDecoration(
              color: Hexcolor(primerKolor),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text("Welcome Chief!",
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: defPadding),
              padding: EdgeInsets.symmetric(horizontal: defPadding),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Hexcolor("#000").withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Hexcolor(primerKolor),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MarketPlace())
                        );
                      },
                      child: Text(
                        "market place".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Hexcolor(primerKolor),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ListFood())
                        );
                      },
                      child: Text(
                        "kupon".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
