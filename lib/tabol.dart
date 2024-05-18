import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:pos/midels.dart';
import 'package:pos/sales.dart';
import 'package:pos/testtt.dart';

ckh a = ckh();

class tabol extends StatefulWidget {
  const tabol({Key? key}) : super(key: key);

  @override
  _tabolState createState() => _tabolState();
}

class _tabolState extends State<tabol> {
  List tapon = [1, 6, 8];
  List tapoff = [];

  var numt = 0;
  var colorb1 = Colors.green.withOpacity(0.5);
  var colorb2 = Colors.white.withOpacity(0.2);
  var si = 0.0;

  var ctab = 6;
  ScrollController con = ScrollController();
  ScrollController coff = ScrollController();
  bool ctable = false;
  var ctaboff;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        swtshthem(),
        SafeArea(
            child: Column(
          children: [
            //.................رقم التربيزه............................
            Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        setState(() {
                          ctaboff = tapoff.length;
                          tapoff.remove(ctaboff - 1);
                        });
                      });
                    },
                    icon: Icon(
                      Icons.minimize_sharp,
                      color: Colors.red,
                      size: 20.0,
                    )),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  ctaboff.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  width: 10.0,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        ctaboff = tapoff.length;
                        tapoff.add(ctaboff++);
                      });
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 20.0,
                    )),
                Spacer(),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      numt.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),

            //.....شريط التحكم في التربيزات .........
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //......اعداد التربيزات...
                  Expanded(
                    flex: 6,
                    child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.green.withOpacity(0.4),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50.0,
                                      width: 50.0,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green.withOpacity(0.6),
                                      ),
                                      child: Text(
                                        '$ctab',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Text(
                                      'الطاولات المفعله',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                )),
                            Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.red.withOpacity(0.4),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50.0,
                                      width: 50.0,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red.withOpacity(0.6),
                                      ),
                                      child: Text(
                                        '$ctab',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Text(
                                      'الطاولات المغلقه',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                )),
                            Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.blue.withOpacity(0.4),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50.0,
                                      width: 50.0,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue.withOpacity(0.6),
                                      ),
                                      child: Text(
                                        '$ctab',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Text(
                                      ' اجمالي الطاولات',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                )),
                          ],
                        )),
                  ),
                  //......زر فتح الطاوله......
                  Expanded(
                    flex: 1,
                    child: Container(
                        height: 100.0,
                        child: TextButton(
                          
                            child: Text(
                              'OPEN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            ),
                            onPressed: () {})),
                  ),
                  //......زر قفل الطاوله.......
                  Expanded(
                    flex: 1,
                    child: Container(
                        height: 100.0,
                        child: TextButton(
                         
                            child: Text(
                              'CLOSE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            ),
                            onPressed: () {})),
                  ),
                ],
              ),
            ),
            //......بيانات الترابيزه وفاتورتها.......
            Expanded(
                flex: 7,
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      //.......ليسته الفاتوره الخاصه بالطربيزه..........
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: double.infinity,
                          child: Scrollbar(
                              thumbVisibility: true,
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 50,
                                  itemBuilder: (Context, index) {
                                    return Container(
                                      color: Colors.white.withOpacity(0.2),
                                      margin: EdgeInsets.all(1.0),
                                      height: 40.0,
                                      width: 100.0,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Spacer(),
                                          Text('وجبه نص شيش',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          Spacer(),
                                          Text('2',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          Spacer(),
                                          Text('36',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          Spacer(),
                                        ],
                                      ),
                                    );
                                  })),
                        ),
                      ),
                      //......بيانات الطاوله المختاره.....
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'رقم الطاوله $numt',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                              Text(
                                'رقم الفاتوره $numt',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                'قيمه الضريبه $numt',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                'قيمه الخصم $numt',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                'قيمه الاجمالي $numt',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Text(
                                'كابتن الصاله : احمد صالح ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ],
                          )),
                    ],
                  ),
                )),

            //................التربيزات المفتوحه....................
            Expanded(
              flex: 1,
              child: Container(
                height: 50.0,
                width: double.infinity,
                child: Scrollbar(
                  controller: con,
                  trackVisibility: true,
                  thumbVisibility: true,
                  child: ListView.builder(
                    controller: con,
                    scrollDirection: Axis.horizontal,
                    itemCount: tapon.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 50.0,
                        width: 50.0,
                        margin: EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorb1,
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              numt = tapon[index];
                            });
                          },
                          icon: Text(
                            tapon[index].toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            //..................التربيزات المغلقه....................
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: Scrollbar(
                  controller: coff,
                  trackVisibility: true,
                  thumbVisibility: true,
                  child: ListView.builder(
                    controller: coff,
                    scrollDirection: Axis.horizontal,
                    itemCount: tapoff.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(2.07),
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colorb2,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Text(
                            tapoff[index].toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ))
      ],
    ));
  }
}
