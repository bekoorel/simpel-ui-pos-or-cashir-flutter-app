import 'package:flutter/material.dart';
import 'package:pos/sitting.dart';
import 'package:pos/splach.dart';
import 'package:pos/stock.dart';
import 'package:pos/tabol.dart';

import 'aas.dart';
import 'custmr.dart';

import 'sales.dart';

class navg extends StatefulWidget {
  const navg({Key? key}) : super(key: key);

  @override
  _navgState createState() => _navgState();
}

class _navgState extends State<navg> {
  int cur = 0;
  List scr = [sales(), tabol(), stock(), sitting(), custmr(), se()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "قائمه البيع"),
          BottomNavigationBarItem(
              icon: Icon(Icons.holiday_village_rounded), label: "الطاولات"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_photos), label: "المخزن"),
          BottomNavigationBarItem(
              icon: Icon(Icons.av_timer_rounded), label: "الاعدادات"),
          BottomNavigationBarItem(
              icon: Icon(Icons.dark_mode_outlined), label: "العملاء"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "شات"),
        ],
        elevation: 3.0,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15.0,
        selectedIconTheme: IconThemeData(color: Colors.teal, size: 15.0),
        selectedItemColor: Colors.teal,
        selectedLabelStyle:
            TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        unselectedFontSize: 15.0,
        unselectedIconTheme: IconThemeData(color: Colors.teal, size: 15.0),
        unselectedItemColor: Colors.teal,
        unselectedLabelStyle: TextStyle(
            color: Colors.teal, fontSize: 15.0, fontWeight: FontWeight.bold),
        currentIndex: 0,
        onTap: (index) {
          setState(() {
            cur = index;
          });
        },
      ),
      body: scr[cur],
    );
  }
}
