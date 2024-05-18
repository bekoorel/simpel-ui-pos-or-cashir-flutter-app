import 'package:flutter/material.dart';
import 'package:pos/sales.dart';

class se extends StatefulWidget {
  const se({Key? key}) : super(key: key);

  @override
  State<se> createState() => _seState();
}

class _seState extends State<se> {
  List mas = ['hi', 'hhjhkjgjhffxddhkc', 'jgfuvhlvklbkjb'];
  var t;
  ScrollController co = ScrollController();
  ScrollController cp = ScrollController();
  Color scolor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            swtshthem(),
            SafeArea(
                child: Column(
              children: [
                Expanded(
                  flex: 9,
                  child: Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              child: Scrollbar(
                                controller: co,
                                trackVisibility: true,
                                thumbVisibility: true,
                                child: ListView.builder(
                                    controller: co,
                                    scrollDirection: Axis.vertical,
                                    itemCount: mas.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        alignment: Alignment.center,
                                        color: Colors.white,
                                        margin: EdgeInsets.all(5.0),
                                        width: 100.0,
                                        height: 100.0,
                                        child: Text(
                                          mas[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Scrollbar(
                                controller: cp,
                                trackVisibility: true,
                                thumbVisibility: true,
                                child: ListView.builder(
                                    controller: cp,
                                    scrollDirection: Axis.vertical,
                                    itemCount: 30,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 50.0,
                                        margin: EdgeInsets.all(2.0),
                                        child: TextButton(
                                            child: Text(
                                              'اسم الفرع',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            
                                            onPressed: () {}),
                                      );
                                    }),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.location_on_outlined,
                                color: Colors.blue,
                                size: 50,
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.image,
                                color: Colors.yellow,
                                size: 50,
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: IconButton(
                              enableFeedback: false,
                              onPressed: () {
                                setState(() {
                                  mas.add(t);
                                });
                              },
                              icon: Icon(
                                Icons.send_outlined,
                                color: Colors.green,
                                size: 50,
                              )),
                        ),
                        Expanded(
                          flex: 9,
                          child: Container(
                              color: Colors.white,
                              child: TextField(
                                onChanged: (value) {
                                  setState(() {
                                    t = value;
                                  });
                                },
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}
