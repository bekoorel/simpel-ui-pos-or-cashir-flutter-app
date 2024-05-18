import 'package:flutter/material.dart';
import 'package:pos/sales.dart';
import 'package:pos/sqlflite.dart';

import 'hh.dart';

var term;
int themnum = 1;
var themcolorss = Colors.black;
ScrollController cco = ScrollController();
ScrollController thscrol = ScrollController();

class sitting extends StatefulWidget {
  const sitting({Key? key}) : super(key: key);

  @override
  _sittingState createState() => _sittingState();
}

class _sittingState extends State<sitting> {
  /*sqldb sqlDb = sqldb();*/

  var d;
  var add;
  var ubdateid;
  var ubdatev;
  var colum;
  var lockdb = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.black,
              bottom: TabBar(tabs: [
                /*Tab(
                  icon: Icon(Icons.folder_open_outlined),
                  text: 'قاعده البيانات الداخليه',
                ),*/
                Tab(
                  icon: Icon(Icons.wifi_tethering),
                  text: 'قاعده البيانات الخارجيه',
                ),
                Tab(
                  icon: Icon(Icons.person_pin),
                  text: 'المستخدمين',
                ),
                Tab(
                  icon: Icon(Icons.color_lens),
                  text: 'الثيمات',
                ),
              ]),
            ),
            body: TabBarView(children: [
              //..................فاعده البيانات الداخليه............................
              /*
              Row(
                children: [
                  //.....................الترمنال..................
                  Expanded(
                    flex: 3,
                    child: Container(
                        alignment: Alignment.center,
                        color: Colors.black,
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          children: [
                            //......................استعلام...................
                            Expanded(
                              flex: 1,
                              child: Container(
                                  height: 30,
                                  width: double.infinity,
                                  child: RaisedButton(
                                    color: Colors.grey,
                                    onPressed: () async {
                                      List<Map> response = await sqlDb
                                          .readdata("SELECT * FROM 'notes'");
                                      print("$response");
                                      setState(() {
                                        term = response;
                                      });
                                    },
                                    child: Text(
                                      'استعلام',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ),

                            Expanded(
                              flex: 4,
                              child: Text(
                                term.toString(),
                                softWrap: true,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green),
                              ),
                            ),
                            Expanded(flex: 4, child: p()),
                          ],
                        )),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey,
                      height: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          //......اضافه عمود........
                          Container(
                            margin: EdgeInsets.all(2.0),
                            width: double.infinity,
                            height: 150.0,
                            color: Colors.black,
                            child: Column(
                              children: [
                                //..............اضافه عمود للجدول..........
                                Container(
                                    height: 30,
                                    width: double.infinity,
                                    child: RaisedButton(
                                      color: Colors.indigo,
                                      onPressed: () {
                                        setState(() {});
                                      },
                                      child: Text(
                                        'اضافه عمود للجدول',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )),
                                Spacer(),
                                //.........ادخل رقم الفيرجن............
                                Container(
                                  color: Colors.deepOrange[900],
                                  width: double.infinity,
                                  height: 40,
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    enabled: lockdb,
                                    decoration: InputDecoration(
                                        hintText: 'ادخل رقم الفيرجن',
                                        hintStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                    onChanged: (value) {
                                      setState(() {
                                        // virsiondb = int.parse(value);
                                      });
                                    },
                                  ),
                                ),
                                Spacer(),
                                //...........ادخل اسم العمود.........
                                Container(
                                  color: Colors.deepOrange[900],
                                  width: double.infinity,
                                  height: 40,
                                  child: TextField(
                                    style: TextStyle(color: Colors.white),
                                    enabled: lockdb,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        hintText: 'ادخل اسم العمود',
                                        hintStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold)),
                                    onChanged: (value) {
                                      setState(() {
                                        // addcolumnname = value;
                                      });
                                    },
                                  ),
                                ),
                                Spacer()
                              ],
                            ),
                          ),
                          //.......حذف.........

                          Container(
                              margin: EdgeInsets.all(2.0),
                              width: double.infinity,
                              height: 150.0,
                              color: Colors.black,
                              child: Column(
                                children: [
                                  //......................حذف..........................
                                  Container(
                                      height: 30,
                                      width: double.infinity,
                                      child: RaisedButton(
                                        color: Colors.indigo,
                                        onPressed: () async {
                                          int response = await sqlDb.deletdata(
                                              "DELETE FROM 'notes' WHERE id = $d ");
                                          print("$response");
                                          setState(() {
                                            term = response;
                                          });
                                        },
                                        child: Text(
                                          'حذف',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      )),
                                  Spacer(),

                                  //..............ادخل رقم الاي دي للصف الذي تريد حذفه....................
                                  Container(
                                    color: Colors.deepOrange[900],
                                    width: 250,
                                    height: 40,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      enabled: lockdb,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          hintText:
                                              'ادخل رقم الاي دي للصف الذي تريد حذفه',
                                          hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                      onChanged: (value) {
                                        setState(() {
                                          d = value;
                                        });
                                      },
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              )),
                          //........اضافه......
                          Container(
                              margin: EdgeInsets.all(2.0),
                              width: double.infinity,
                              height: 150.0,
                              color: Colors.black,
                              child: Column(
                                children: [
                                  //.....................اضافه.........................
                                  Container(
                                      height: 30,
                                      width: double.infinity,
                                      child: RaisedButton(
                                        color: Colors.indigo,
                                        onPressed: () async {
                                          int response = await sqlDb.insertdata(
                                              "INSERT INTO 'notes'('$colum') VALUES ('$add')");
                                          print(response);
                                          setState(() {
                                            term = response;
                                          });
                                        },
                                        child: Text(
                                          'اضافه',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                  Spacer(),
                                  //..............ادخل القيمه للصف الذي تريد اضافته.......
                                  Container(
                                    color: Colors.deepOrange[900],
                                    width: double.infinity,
                                    height: 30,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      enabled: lockdb,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          hintText:
                                              'ادخل القيمه للصف الذي تريد اضافته',
                                          hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                      onChanged: (value) {
                                        setState(() {
                                          add = value;
                                        });
                                      },
                                    ),
                                  ),
                                  Spacer(),
                                  //...........ادخل اسم العمود...........
                                  Container(
                                    color: Colors.deepOrange[900],
                                    width: double.infinity,
                                    height: 30,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      enabled: lockdb,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          hintText: 'ادخل اسم العمود',
                                          hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                      onChanged: (value) {
                                        setState(() {
                                          colum = value;
                                        });
                                      },
                                    ),
                                  ),

                                  Spacer(),
                                ],
                              )),

                          //.......تحديث.......
                          Container(
                              margin: EdgeInsets.all(2.0),
                              width: double.infinity,
                              height: 150.0,
                              color: Colors.black,
                              child: Column(
                                children: [
                                  //......................تحديث.....................
                                  Container(
                                      height: 30,
                                      width: double.infinity,
                                      child: RaisedButton(
                                        color: Colors.indigo,
                                        onPressed: () async {
                                          int response = await sqlDb.updatdata(
                                              "UPDATE 'notes' SET 'note' = '$ubdatev' WHERE id = $ubdateid ");
                                          print(response);
                                          setState(() {
                                            term = response;
                                          });
                                        },
                                        child: Text(
                                          'تحديث قيمه',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )),
                                  Spacer(),

                                  //...........ادخل رقم الاي دي للصف الذي تريد تحديثه.....
                                  Container(
                                    color: Colors.deepOrange[900],
                                    width: double.infinity,
                                    height: 30,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      enabled: lockdb,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          hintText:
                                              'ادخل رقم الاي دي للصف الذي تريد تحديثه',
                                          hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                      onChanged: (value) {
                                        setState(() {
                                          ubdateid = value;
                                        });
                                      },
                                    ),
                                  ),
                                  Spacer(),
                                  //..............ادخل القيمه للصف الذي تريد تحديثه........
                                  Container(
                                    color: Colors.deepOrange[900],
                                    width: double.infinity,
                                    height: 30,
                                    child: TextField(
                                      style: TextStyle(color: Colors.white),
                                      enabled: lockdb,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          hintText:
                                              'ادخل القيمه للصف الذي تريد تحديثه',
                                          hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold)),
                                      onChanged: (value) {
                                        setState(() {
                                          ubdatev = value;
                                        });
                                      },
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //...................قاعده البيانت الخارجيه...............................
              */

              Container(
                child: Text(
                  'قاعده البيانت الخارجيه',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              //..........................المستخدمين....................
              Container(child: usars()),
              //............................الثيمات...................
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    children: [theme(), colorsthem()],
                  )),
            ])));
  }
}

//.........................المستخدمين........................
class usars extends StatefulWidget {
  const usars({Key? key}) : super(key: key);

  @override
  State<usars> createState() => _usarsState();
}

class _usarsState extends State<usars> {
  List acsses = [
    'اعطاء صلاحيه للوصول الي صفحه البيع',
    'اعطاء صلاحيه للوصول الي صفحه التربيزات',
    'اعطاء صلاحيه للوصول الي صفحه المخزن',
    'اعطاء صلاحيه للوصول الي صفحه الاعدادات',
    'اعطاء صلاحيه للوصول الي صفحه العملاء',
    'اعطاء صلاحيه للوصول الي صفحه قواعد البيانات الداخليه',
    'اعطاء صلاحيه للوصول الي صفحه قواعد البيانات الخارجيه',
  ];
  var hide = true;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      //.................ليسته اليوزرات...................
      Expanded(
          flex: 5,
          child: Container(
              color: Colors.black,
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 150.0,
                        margin: EdgeInsets.all(2.0),
                        color: Colors.white,
                        child: Row(
                          children: [
                            //.........................ليسته الصلحيات........
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: ListView.builder(
                                    itemCount: acsses.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        height: 30.0,
                                        margin: EdgeInsets.all(1.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(acsses[index]),
                                            Checkbox(
                                              value: true,
                                              onChanged: (a) {},
                                            )
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          child: TextField(
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          hintText: 'الاسم',
                                        ),
                                        enabled: hide,
                                      )),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          child: TextField(
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          hintText: 'اسم المستخدم',
                                        ),
                                        enabled: hide,
                                      )),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                          child: TextField(
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                          hintText: 'كلمه المرور',
                                        ),
                                        enabled: hide,
                                      )),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            )),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.mode_edit_sharp)),
                                        Switch(
                                          value: true,
                                          onChanged: (g) {},
                                          activeColor: Colors.green,
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        ));
                  }))),
      //.................ليسته اضافه مستخدمين..................

      Expanded(
          flex: 1,
          child: Container(
            color: Colors.white38,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'اضافه مستخدم',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'الاسم',
                    ),
                    enabled: hide,
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: 'اسم المستخدم',
                    ),
                    enabled: hide,
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(hintText: 'كلمه المرور'),
                    enabled: hide,
                  )),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.save_outlined,
                      color: Colors.black,
                    )),
                Spacer(),
                Text(
                  'تمت الاضافه بنجاح',
                  style: TextStyle(color: Colors.green),
                ),
                LinearProgressIndicator(
                  minHeight: 2,
                ),
                Spacer(),
              ],
            ),
          )),
    ]);
  }
}

class theme extends StatefulWidget {
  const theme({Key? key}) : super(key: key);

  @override
  State<theme> createState() => _themeState();
}

class _themeState extends State<theme> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 15,
        child: Container(
          child: Scrollbar(
            controller: thscrol,
            child: ListView(
              controller: thscrol,
              children: [
                //...........................1
                Container(
                    margin: EdgeInsets.all(20.0),
                    height: 300.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            width: double.infinity,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/them1.png'))),
                        TextButton(
                         
                          onPressed: () {
                            setState(() {
                              im = 'assets/them1.png';
                              themnum = 1;
                            });
                          },
                          child: Text('تطبيق'),
                        )
                      ],
                    )),
                //.....................2
                Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(20.0),
                    height: 300.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            width: double.infinity,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/them2.png'))),
                        TextButton(
                        
                          onPressed: () {
                            setState(() {
                              im = 'assets/them2.png';
                              themnum = 1;
                            });
                          },
                          child: Text('تطبيق'),
                        )
                      ],
                    )),
                //.....................3
                Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(20.0),
                    height: 300.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            width: double.infinity,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/them3.jpg'))),
                        TextButton(
                       
                          onPressed: () {
                            setState(() {
                              im = 'assets/them3.jpg';
                              themnum = 1;
                            });
                          },
                          child: Text('تطبيق'),
                        )
                      ],
                    )),
                //......................4
                Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(20.0),
                    height: 300.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            width: double.infinity,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/them4.jpeg'))),
                        TextButton(
                        
                          onPressed: () {
                            setState(() {
                              im = 'assets/them4.jpeg';
                              themnum = 1;
                            });
                          },
                          child: Text('تطبيق'),
                        )
                      ],
                    )),
                //........................5
                Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(20.0),
                    height: 300.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            width: double.infinity,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/them5.png'))),
                        TextButton(
                      
                          onPressed: () {
                            setState(() {
                              im = 'assets/them5.png';
                              themnum = 1;
                            });
                          },
                          child: Text('تطبيق'),
                        )
                      ],
                    )),
                //.....................6
                Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(20.0),
                    height: 300.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            width: double.infinity,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/them6.png'))),
                        TextButton(
                        
                          onPressed: () {
                            setState(() {
                              im = 'assets/them6.png';
                              themnum = 1;
                            });
                          },
                          child: Text('تطبيق'),
                        )
                      ],
                    )),
                Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(20.0),
                    height: 300.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            width: double.infinity,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/cover1.png'))),
                        TextButton(
                       
                          onPressed: () {
                            setState(() {
                              im = 'assets/cover1.png';
                              themnum = 1;
                            });
                          },
                          child: Text('تطبيق'),
                        )
                      ],
                    )),
                Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(20.0),
                    height: 300.0,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            width: double.infinity,
                            child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/cover2.png'))),
                        TextButton(
                       
                          onPressed: () {
                            setState(() {
                              im = 'assets/cover2.png';
                              themnum = 1;
                            });
                          },
                          child: Text('تطبيق'),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}

class colorsthem extends StatefulWidget {
  const colorsthem({Key? key}) : super(key: key);

  @override
  State<colorsthem> createState() => _colorsthemState();
}

class _colorsthemState extends State<colorsthem> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Scrollbar(
        controller: cco,
        child: ListView(
            controller: cco,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.green;
                    });
                  },
                  child: Text(''),
                  
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.red;
                    });
                  },
                  child: Text(''),
                  
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.yellow;
                    });
                  },
                  child: Text(''),
              
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.orange;
                    });
                  },
                  child: Text(''),
                 
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.indigo;
                    });
                  },
                  child: Text(''),
                 
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.pink;
                    });
                  },
                  child: Text(''),
                
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.lightBlue;
                    });
                  },
                  child: Text(''),
                 
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.grey;
                    });
                  },
                  child: Text(''),
                 
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.teal;
                    });
                  },
                  child: Text(''),
                
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.amber;
                    });
                  },
                  child: Text(''),
                 
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.lime;
                    });
                  },
                  child: Text(''),
                
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      themnum = 2;
                      themcolorss = Colors.black;
                    });
                  },
                  child: Text(''),
              
                ),
              ),
            ]),
      ),
    ));
  }
}
