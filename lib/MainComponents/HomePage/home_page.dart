import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';
import 'package:hexcolor/hexcolor.dart';

import 'HomeComponents/body.dart';

class HomePageMain extends StatefulWidget {
  @override
  _HomePageMain createState() => _HomePageMain();
}

class _HomePageMain extends State<HomePageMain> {
  int _selectedIndex = 0;
  final _widgetOptions = <Widget>[
    Body(),
    Text(
      'Halaman dua'
    ),
    Text(
      'Halaman tiga'
    )
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
            bottom: defPadding / 2 -2,
            left: defPadding * 2,
            right: defPadding * 2
        ),
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
            ),
            color: Hexcolor(primerKolor),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, -10),
                  blurRadius: 35,
                  color: Hexcolor("#000").withOpacity(0.1)
              )
            ]
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Beranda'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fastfood),
              title: Text('Daftar Makanan'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind),
              title: Text('Akun'),
            ),
          ],
          backgroundColor: Hexcolor(primerKolor),
          elevation: 0,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

