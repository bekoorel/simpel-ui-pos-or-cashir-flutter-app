import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'sales.dart';

var datan;

List<String> lcustmrname = [
  'احمد رمضان حمدي عبد الفتاح',
  'huihihk',
  'jkhkjnkj',
];
List lcustmrnom = [
  01118262,
  011185549262,
  0000149262,
];
List<String> lcustmradr = [
  'الشيخ زايد بين الجهاز شارع 35 عماره رقم 15 الدور الرابع بجوار سنتر الملكه',
  'م 15 الدور الرابع بجوار سنتر الملكه',
  'الشmklmlkml 15 الدور الرابع بجوار سنتر الملكه',
];
bool locked = false;
var lockedcolor = Colors.yellow;
var lockedsiez = 25.0;

class custmr extends StatefulWidget {
  const custmr({Key? key}) : super(key: key);

  @override
  State<custmr> createState() => _custmrState();
}

class _custmrState extends State<custmr> {
  ScrollController ci = ScrollController();
  ScrollController cd = ScrollController();
  ScrollController cc = ScrollController();
  var selctedckcas = 'فرز';
  var t = "5000";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 63, 63, 63),
          appBar: AppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.black,
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.wifi_tethering),
                  text: 'سجلات الفواتير',
                ),
                Tab(
                  icon: Icon(Icons.wifi_tethering),
                  text: 'سجلات العملاء',
                ),
              ])),
          body: TabBarView(children: [
            //.............تاب الفواتير......................

            Container(
              width: double.infinity,
              height: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Spacer(),
                                  Text(
                                    'الاجمالي=$t',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Spacer(),
                                  Text(
                                    'الخصم=$t',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Spacer(),
                                  Text(
                                    'الضريبه=$t',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Spacer(),
                                  Text(
                                    'مكان الطلب=$t',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Spacer(),
                                  Text(
                                    'كاشير=$t',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Spacer(),
                                  Text(
                                    'رقم الفاتوره=$t',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Spacer(),
                                ],
                              )),
                          Expanded(
                              flex: 9,
                              child: Scrollbar(
                                  controller: ci,
                                  trackVisibility: true,
                                  thumbVisibility: true,
                                  child: ListView.builder(
                                      controller: ci,
                                      itemCount: 20,
                                      itemBuilder: ((context, index) {
                                        return Container(
                                          margin: EdgeInsets.all(2.0),
                                          color: Colors.white,
                                          height: 60.0,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Spacer(),
                                              Expanded(
                                                  flex: 1,
                                                  child: Text('اسم الصنف')),
                                              Expanded(
                                                  flex: 1,
                                                  child: Text('الكميه')),
                                              Expanded(
                                                  flex: 1,
                                                  child: Text('الخصم')),
                                              Expanded(
                                                  flex: 1,
                                                  child: Text('الاجمالي')),
                                              Spacer(),
                                            ],
                                          ),
                                        );
                                      })))),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: Container(
                          child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                      color: Colors.white,
                                      width: 200.0,
                                      height: 50.0,
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                      )),
                                  Spacer(),
                                  Container(
                                    child: DropdownButton(
                                      dropdownColor: Colors.black,
                                      iconDisabledColor: Colors.white,
                                      iconEnabledColor: Colors.white,
                                      items: [
                                        'فرز',
                                        '1',
                                        '2',
                                        '3',
                                      ]
                                          .map((e) => DropdownMenuItem(
                                                child: Text(
                                                  "$e  ",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 30.0),
                                                ),
                                                value: e,
                                              ))
                                          .toList(),
                                      onChanged: (val) {
                                        setState(() {
                                          selctedckcas = val.toString();
                                        });
                                      },
                                      value: selctedckcas,
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              )),
                          Expanded(
                            flex: 9,
                            child: Container(
                              child: Scrollbar(
                                controller: cd,
                                trackVisibility: true,
                                thumbVisibility: true,
                                child: ListView.builder(
                                    controller: cd,
                                    itemCount: 20,
                                    itemBuilder: (Context, index) {
                                      return Container(
                                        margin: EdgeInsets.all(2.0),
                                        height: 50.0,
                                        child: TextButton(
                                            
                                            child: Text(
                                              'رقم الفاتوره -الساعه-التاريخ',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
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
                  ),
                ],
              ),
            ),
            //........تاب العملاء...............
            Column(children: [
              LinearProgressIndicator(),
              //.................زر التعديل..................
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (locked == false) {
                              locked = true;

                              lockedcolor = Colors.blue;
                              lockedsiez = 35.0;
                            } else {
                              locked = false;
                              lockedcolor = Colors.yellow;
                              lockedsiez = 25.0;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.edit,
                          color: lockedcolor,
                          size: lockedsiez,
                        )),
                  ],
                ),
              ),
              //.................قايمه العملاء...............
              Expanded(
                  flex: 9,
                  child: Container(
                    width: double.infinity,
                    child: Scrollbar(
                      controller: cc,
                      trackVisibility: true,
                      thumbVisibility: true,
                      child: ListView.builder(
                          controller: cc,
                          scrollDirection: Axis.vertical,
                          itemCount: lcustmrname.length,
                          itemBuilder: (Context, index) {
                            return Container(
                              width: double.infinity,
                              height: 110.0,
                              child: Row(
                                children: [
                                  //.................الاسم.........................
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                        height: double.infinity,
                                        child: TextField(
                                          enabled: locked,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                              hintText:
                                                  lcustmrname[index].toString(),
                                              hintStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0)),
                                          onChanged: (value) {
                                            setState(() {});
                                          },
                                        )),
                                  ),
                                  //..................رقم التلفون..................
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                        height: double.infinity,
                                        child: TextField(
                                          enabled: locked,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                              hintText:
                                                  lcustmrnom[index].toString(),
                                              hintStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0)),
                                        )),
                                  ),
                                  //..................العنوان......................
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                        height: double.infinity,
                                        child: TextField(
                                          enabled: locked,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.0),
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                              hintText:
                                                  lcustmradr[index].toString(),
                                              hintStyle: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12.0)),
                                        )),
                                  ),
                                  //................... حذف الصف...................
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          lcustmrname
                                              .remove(lcustmrname[index]);
                                          lcustmrnom.remove(lcustmrnom[index]);
                                          lcustmradr.remove(lcustmradr[index]);
                                        });
                                      },
                                      icon: Icon(
                                        Icons.delete_forever_rounded,
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            );
                          }),
                    ),
                  )),
            ])
          ]),
        ));
  }
}
