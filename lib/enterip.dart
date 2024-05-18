import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/sales.dart';
import 'package:pos/splach.dart';
import 'conectusar.dart';

String notictextip = 'ادخل وسيله اتصال بقاعده البيانات';

class enterip extends StatefulWidget {
  const enterip({Key? key}) : super(key: key);

  @override
  State<enterip> createState() => _enteripState();
}

class _enteripState extends State<enterip> {
  @override
  void initState() {
    postdata = getPostById();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        swtshthem(),
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              notictextip,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    color: Colors.grey[900],
                    width: 100.0,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      onChanged: (Value) {
                        setState(() {
                          ip1 = Value;
                        });
                      },
                    )),
                Text(
                  ':',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Container(
                    color: Colors.grey[900],
                    width: 100.0,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      onChanged: (Value) {
                        setState(() {
                          ip2 = Value;
                        });
                      },
                    )),
                Text(
                  ':',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Container(
                    color: Colors.grey[900],
                    width: 100.0,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      onChanged: (Value) {
                        setState(() {
                          ip3 = Value;
                        });
                      },
                    )),
                Text(
                  ':',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Container(
                    color: Colors.grey[900],
                    width: 100.0,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      onChanged: (Value) {
                        setState(() {
                          ip4 = Value;
                        });
                      },
                    )),
                Container(
                  height: 50.0,
                  width: 100.0,
                  child: TextButton(
                     
                      child: Text(
                        'اتصال',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return splach();
                          }));
                        });
                      }),
                )
              ],
            ),
          ],
        ))
      ],
    ));
  }
}
