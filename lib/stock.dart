import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

import 'sales.dart';

class stock extends StatefulWidget {
  const stock({Key? key}) : super(key: key);

  @override
  State<stock> createState() => _stockState();
}

class _stockState extends State<stock> {
  var selctedck = "ادخل لون القسم";
  var doanck = ' ';
  var colordonck = Colors.black;
  var texxck;
  //.........................................
  var texxit;
  var selctedit = 'ادخل القسم التابع له الصنف';
  var doanit = ' ';
  var colordonit = Colors.black;
  //..........................................
  var selctedcke = "ادخل لون القسم";
  var doancke = ' ';
  var colordoncke = Colors.black;
  var texxcke;
  //..........................................
  var selctedite = 'اختر الصنف المراد تعديله';
  ScrollController inc = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: Colors.black,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.add_business_outlined),
                text: 'اضافه قسم',
              ),
              Tab(
                icon: Icon(Icons.add_chart_sharp),
                text: 'اضافه صنف',
              ),
              Tab(
                icon: Icon(Icons.edit),
                text: 'تعديل قسم',
              ),
              Tab(
                icon: Icon(Icons.edit),
                text: 'تعديل صنف',
              ),
              Tab(
                icon: Icon(Icons.bar_chart_rounded),
                text: 'الاحصائيات',
              ),
              Tab(
                icon: Icon(Icons.library_add_check),
                text: 'الجرد',
              ),
            ]),
          ),
          body: TabBarView(children: [
            //................كونتنر اضافه قسم.............................
            Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Spacer(),
                      TextField(
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),
                        decoration: InputDecoration(
                          hintText: 'ادخل اسم القسم  ',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          setState(() {
                            texxck = value;
                            if (value.isEmpty) {
                              texxck = null;
                            }
                          });
                        },
                      ),
                      Spacer(),
                      Container(
                        child: DropdownButton(
                          dropdownColor: Colors.black,
                          iconDisabledColor: Colors.white,
                          iconEnabledColor: Colors.white,
                          items: [
                            'ادخل لون القسم',
                            '1',
                            '2',
                            '3',
                          ]
                              .map((e) => DropdownMenuItem(
                                    child: Text(
                                      "$e  ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0),
                                    ),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              selctedck = val.toString();
                            });
                          },
                          value: selctedck,
                        ),
                      ),
                      Spacer(),
                      Text(
                        doanck,
                        style: TextStyle(
                            color: colordonck,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                      SizedBox(
                        height: 80.0,
                        width: 80.0,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (texxck == null) {
                                  colordonck = Colors.red;
                                  doanck =
                                      'الرجاء ادخال البيانات وعدم ترك الخانات فارغه';
                                } else {
                                  colordonck = Colors.green;
                                  doanck = 'تم اضافه القسم بنجاح';
                                  ckshan.add(texxck);
                                }
                              });
                            },
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 70.0,
                            )),
                      ),
                      Spacer()
                    ],
                  ),
                )),
            //.................كونتنر اضافه صنف............................

            Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Expanded(
                        flex: 1,
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                          decoration: InputDecoration(
                            hintText: 'ادخل اسم الصنف  ',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            setState(() {
                              texxit = value;
                              if (value.isEmpty) {
                                texxck = null;
                              }
                            });
                          },
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: DropdownButton(
                            dropdownColor: Colors.black,
                            iconDisabledColor: Colors.white,
                            iconEnabledColor: Colors.white,
                            items: [
                              'ادخل القسم التابع له الصنف',
                              '1',
                              '2',
                              '3',
                            ]
                                .map((a) => DropdownMenuItem(
                                      child: Text(
                                        "$a  ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30.0),
                                      ),
                                      value: a,
                                    ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                selctedit = val.toString();
                              });
                            },
                            value: selctedit,
                          ),
                        ),
                      ),
                      Spacer(),
                      const Expanded(
                        flex: 1,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                          decoration: InputDecoration(
                              hintText: 'ادخل السعر',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0)),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                          decoration: InputDecoration(
                              hintText: 'ادخل الكميه',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0)),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          doanit,
                          style: TextStyle(
                              color: colordonit,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 80.0,
                          width: 80.0,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (texxit == null) {
                                    colordonit = Colors.red;
                                    doanit =
                                        'الرجاء ادخال البيانات وعدم ترك الخانات فارغه';
                                  } else {
                                    colordonit = Colors.green;
                                    doanit = 'تم اضافه الصنف بنجاح';
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 70.0,
                              )),
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                )),
            //..................كونتنر تعديل قسم...........................
            Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Spacer(),
                      TextField(
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0),
                        decoration: const InputDecoration(
                          hintText: 'ادخل الاسم الجديد للقسم  ',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          setState(() {
                            texxcke = value;
                            if (value.isEmpty) {
                              texxcke = null;
                            }
                          });
                        },
                      ),
                      Spacer(),
                      Container(
                        child: DropdownButton(
                          dropdownColor: Colors.black,
                          iconDisabledColor: Colors.white,
                          iconEnabledColor: Colors.white,
                          items: [
                            'ادخل لون القسم',
                            '1',
                            '2',
                            '3',
                          ]
                              .map((f) => DropdownMenuItem(
                                    child: Text(
                                      "$f  ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0),
                                    ),
                                    value: f,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              selctedcke = val.toString();
                            });
                          },
                          value: selctedcke,
                        ),
                      ),
                      Spacer(),
                      Text(
                        doancke,
                        style: TextStyle(
                            color: colordoncke,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                      SizedBox(
                        height: 80.0,
                        width: 80.0,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (texxcke == null) {
                                  colordoncke = Colors.red;
                                  doancke =
                                      'الرجاء ادخال البيانات وعدم ترك الخانات فارغه';
                                } else {
                                  colordoncke = Colors.green;
                                  doancke = 'تم اضافه القسم بنجاح';
                                }
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 70.0,
                            )),
                      ),
                      Spacer()
                    ],
                  ),
                )),
            //..............كونتنر تعديل صنف...............................
            Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Expanded(
                        flex: 1,
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                          decoration: InputDecoration(
                            hintText: ' ادخل الاسم الجديد للصنف  ',
                            hintStyle: TextStyle(color: Colors.white),
                          ),
                          textAlign: TextAlign.center,
                          onChanged: (value) {
                            setState(() {
                              texxit = value;
                              if (value.isEmpty) {
                                texxck = null;
                              }
                            });
                          },
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: DropdownButton(
                            dropdownColor: Colors.black,
                            iconDisabledColor: Colors.white,
                            iconEnabledColor: Colors.white,
                            items: [
                              'اختر الصنف المراد تعديله',
                              '1',
                              '2',
                              '3',
                            ]
                                .map((a) => DropdownMenuItem(
                                      child: Text(
                                        "$a  ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30.0),
                                      ),
                                      value: a,
                                    ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                selctedit = val.toString();
                              });
                            },
                            value: selctedite,
                          ),
                        ),
                      ),
                      Spacer(),
                      const Expanded(
                        flex: 1,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                          decoration: InputDecoration(
                              hintText: 'ادخل السعر الجديد',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0)),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                          decoration: InputDecoration(
                              hintText: 'ادخل الكميه الجديده',
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0)),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          doanit,
                          style: TextStyle(
                              color: colordonit,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 80.0,
                          width: 80.0,
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  if (texxit == null) {
                                    colordonit = Colors.red;
                                    doanit =
                                        'الرجاء ادخال البيانات وعدم ترك الخانات فارغه';
                                  } else {
                                    colordonit = Colors.green;
                                    doanit = 'تم اضافه الصنف بنجاح';
                                  }
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 70.0,
                              )),
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                )),
            //..................كونتنر الاحصائيات...........................
            Stack(
              children: [
                Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.grey,
                            child: Scrollbar(
                              thumbVisibility: true,
                              controller: inc,
                              trackVisibility: true,
                              child: ListView.builder(
                                  controller: inc,
                                  itemCount: 50,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        margin: EdgeInsets.all(4.0),
                                        width: double.infinity,
                                        height: 50.0,
                                        child: Column(
                                          children: [
                                            Spacer(),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '(:عدد القطع/كج)    (:اخر سعر للصنف)    (:القسم التابع له الصنف)    (:اسم الصنف)',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            LinearProgressIndicator(
                                              color: Colors.yellow,
                                              backgroundColor: Colors.black,
                                              minHeight: 10.0,
                                              value: 0.5,
                                            ),
                                            Spacer(),
                                          ],
                                        ));
                                  }),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    width: 300.0,
                    height: 120.0,
                    margin: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.expand),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 114.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {},
                              child: Icon(Icons.search),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              color: Colors.white.withOpacity(0.2),
                              height: 50.0,
                              width: 100.0,
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ],
            ),
            //................كونتنر الجرد.................................
            Container(
              width: double.infinity,
              height: double.infinity,
              child: gard(),
            ),
          ]),
        ));
  }
}

//......................الجرد.......................................

class gard extends StatefulWidget {
  const gard({Key? key}) : super(key: key);

  @override
  State<gard> createState() => _gardState();
}

class _gardState extends State<gard> {
  ScrollController tsco = ScrollController();
  var s = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Container(
                      color: Colors.white,
                      width: 300.0,
                      child: TextField(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                        textAlign: TextAlign.center,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.safety_divider,
                        color: Colors.white,
                      ))
                ],
              ),
            )),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  'تعديل',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                Spacer(),
                Text(
                  'حاله الجرد',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                Spacer(),
                Text(
                  'القسم التابع له',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                Spacer(),
                Text(
                  'السعر',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                Spacer(),
                Text(
                  'الكميه',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                Spacer(),
                Text(
                  'اسم الصنف',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              height: 500,
              child: Scrollbar(
                controller: tsco,
                trackVisibility: true,
                thumbVisibility: true,
                child: ListView.builder(
                    controller: tsco,
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(1.0),
                        color: Colors.white,
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 90,
                            ),
                            Container(
                              width: 50,
                              height: double.infinity,
                              child: TextButton(
                                onPressed: () {},
                              
                                child: Text(
                                  'x',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.priority_high_rounded,
                              color: Colors.yellow[600],
                              size: 13,
                            ),
                            Spacer(),
                            Text(
                              'القسم التابع له',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0),
                            ),
                            Spacer(),
                            Text(
                              'السعر',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0),
                            ),
                            Spacer(),
                            Container(
                              height: double.infinity,
                              width: 50,
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Text(
                              'اسم الصنف',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Radio(
                                value: 1,
                                groupValue: s,
                                onChanged: (k) {
                                  setState(() {
                                    s = 1;
                                  });
                                })
                          ],
                        ),
                      );
                    }),
              ),
            ))
      ],
    );
  }
}
