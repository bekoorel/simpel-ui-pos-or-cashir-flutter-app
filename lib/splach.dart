import 'package:flutter/material.dart';

import 'package:pos/modelusar.dart';
import 'package:pos/testconect3.dart';

import 'conectusar.dart';
import 'navg.dart';

double lodconect = 0.1;
String textloddb = '';
bool switshpage = false;

var usarenter;
var pasenter;
var lod = '';
var Colorr = Colors.yellow;

class splach extends StatefulWidget {
  const splach({Key? key}) : super(key: key);

  @override
  State<splach> createState() => _splachState();
}

class _splachState extends State<splach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Center(
                child: Column(
          children: <Widget>[
            Spacer(
              flex: 1,
            ),
            //.................لوجو................................
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('assets/logob.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textloddb,
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: 900.0,
                          height: 2.0,
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.black,
                            value: lodconect,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
            ),
            //................التحميل.............................
            Expanded(
              flex: 0,
              child: Text('$lod',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                  )),
            ),
            Expanded(
              flex: 0,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  //......................اسم المستخدم............
                  Expanded(
                    flex: 2,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadiusDirectional.circular(20.0)),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                          decoration: InputDecoration(
                              hintText: 'ادخل اسم المستخدم',
                              hintStyle: TextStyle(color: Colors.white),
                              icon: Icon(
                                Icons.account_circle_rounded,
                                color: Colorr,
                              )),
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            setState(() {
                              usarenter = value;
                            });
                          },
                        )),
                  ),
                  //......................كلمه المرور.............
                  Expanded(
                    flex: 2,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadiusDirectional.circular(20.0)),
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                          decoration: InputDecoration(
                              hintText: 'ادخل كلمه المرور',
                              hintStyle: TextStyle(color: Colors.white),
                              icon: Icon(
                                Icons.vpn_key_sharp,
                                color: Colorr,
                              )),
                          obscureText: true,
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            setState(() {
                              pasenter = value;
                            });
                          },
                        )),
                  ),
                  //....................زر تسجيل الدخول...........
                  Expanded(
                    child: Container(
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (usar == null || int.parse(pasenter) == null) {
                                lod = 'تاكد من ادخال البيانات';
                              } else {}

                              ;
                            });
                          },
                          icon: Icon(
                            Icons.login,
                            color: Colors.pink,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ))));
  }
}
