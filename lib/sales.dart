import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/conectusar.dart';
import 'package:pos/navg.dart';

import 'package:pos/sitting.dart';
import 'package:pos/splach.dart';

import 'custmr.dart';

var im = 'assets/cover1.png';
bool tiklock = true;

//...............................
var colorthem;
var total = 0.toDouble();
var discount = 0.toDouble();
var tax = 0.toDouble();
List<double> prisitem = [
  10.0,
  15.0,
  20.0,
  26.0,
  23.0,
  22.0,
  10.0,
  15.0,
  20.0,
  26.0,
  23.0,
  22.0,
  10.0,
  15.0,
  20.0,
  26.0,
  23.0,
  22.0,
];
List<String> ckshan = [];

List<String> items = [
  'فراخ',
  'لحمه',
  'خضراوات',
  'مقبلات',
  'صلصه',
  'جبنه',
  'فراخ',
  'لحمه',
  'خضراوات',
  'مقبلات',
  'صلصه',
  'جبنه',
  'فراخ',
  'لحمه',
  'خضراوات',
  'مقبلات',
  'صلصه',
  'جبنه',
];

List<String> reset = [];
var namecust;
var nomcust;
var adrcust;
int r = 1;
int r2 = 1;
var selctedabb = "الابلكيشن";
var selcteddelv = "اسم الموصل";
var selctedsal = "رقم التربيزه";

var ahmed = Colors.black;

class sales extends StatefulWidget {
  const sales({Key? key}) : super(key: key);

  @override
  _salesState createState() => _salesState();
}

class _salesState extends State<sales> {
  ScrollController ct = ScrollController();
  ScrollController csc = ScrollController();
  ScrollController cinvo = ScrollController();

  String tikaways = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ahmed,
      body: SafeArea(
        child: Stack(children: [
          swtshthem(),
          Column(
            children: [
              //........................كونتنر الاقسام.......................
              Expanded(
                flex: 1,
                child: Container(
                  height: 35.0,
                  child: Scrollbar(
                    controller: csc,
                    trackVisibility: true,
                    thumbVisibility: true,
                    child: ListView.builder(
                        controller: csc,
                        scrollDirection: Axis.horizontal,
                        itemCount: ckshan.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                              splashColor: Colors.red,
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.all(2.0),
                                width: 150.0,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    ckshan[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ));
                        }),
                  ),
                ),
              ),
              //......................كونتنر صفحه البيع.....................
              Expanded(
                flex: 9,
                child: Container(
                  child: Row(
                    children: <Widget>[
                      //..................كونتنر المنيو راسي..........................
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Container(
                            color: colorthem,
                            child: Scrollbar(
                              controller: ct,
                              trackVisibility: true,
                              thumbVisibility: true,
                              child: ListView.builder(
                                controller: ct,
                                itemCount: items.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.all(2.0),
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        //..........اسم الصنف  ........... .

                                        Expanded(
                                          flex: 3,
                                          child: Text(
                                            items[index],
                                            style: TextStyle(
                                                color: Colors.pink,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0),
                                          ),
                                        ),
                                        //.........سعر الصنف
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            prisitem[index].toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        //........زر الاضافه الي الفاتوره........

                                        Expanded(
                                          flex: 1,
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  reset.add(items[index]);
                                                  total =
                                                      prisitem[index] + total;
                                                });
                                              },
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.lightGreen,
                                              )),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      //....................كونتر الحسابات.............................
                      Expanded(
                        flex: 2,
                        child: Container(
                            child: Column(
                          children: [
                            //...............شريط الكاش والفيزا............
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                                    height: 80.0,
                                    child: TextField(
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          hintText: 'قيمه الفيزا',
                                          hintStyle:
                                              TextStyle(color: Colors.white),
                                          icon: Icon(
                                            Icons.credit_card,
                                            color: Colors.white,
                                            size: 50.0,
                                          )),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin:
                                        EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                                    height: 80.0,
                                    child: TextField(
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25.0),
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          hintText: 'قيمه الكاش',
                                          hintStyle:
                                              TextStyle(color: Colors.white),
                                          icon: Icon(
                                            Icons.attach_money,
                                            color: Colors.white,
                                            size: 50.0,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Expanded(
                              flex: 1,
                              child: Container(
                                  color: colorthem,
                                  //.............شريط الخصم..................
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                            color: Colors.white,
                                            child: TextField(
                                              textAlign: TextAlign.center,
                                              decoration: InputDecoration(
                                                  hintText: '%'),
                                            )),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                            color: Colors.white,
                                            child: TextField(
                                              textAlign: TextAlign.center,
                                              decoration: InputDecoration(
                                                  hintText: '|||'),
                                            )),
                                      ),
                                    ],
                                  )),
                            ),

                            //.............شريط مكان ضرب الفاتوره................
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "طرق بيع اخري",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Switch(
                                  value: tiklock,
                                  onChanged: (a) {
                                    setState(() {
                                      if (tiklock) {
                                        tiklock = false;
                                      } else {
                                        tiklock = true;
                                      }
                                    });
                                  },
                                  activeTrackColor: Colors.green,
                                  activeColor: Colors.green,
                                ),
                                Text(
                                  "تيك اوي",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),

                            //..............ابلكيشن صاله دلفري..........

                            appsale(),

                            //.......اضف ملاحظه.......
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: TextField(
                                      maxLines: null,
                                      expands: true,
                                      cursorColor: Colors.white,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: 'اضف ملاحظه للعاملين',
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: TextField(
                                      maxLines: null,
                                      expands: true,
                                      cursorColor: Colors.white,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                          hintText: 'اضف ملاحظه للفاتوره',
                                          hintStyle:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                      ),
                      //....................كونتنر الفاتوره...........................
                      Expanded(
                        flex: 1,
                        child: Container(
                            color: colorthem,
                            child: Column(
                              children: [
                                //.......شريط بيان الاسعار.......
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Row(
                                      children: <Widget>[
                                        Spacer(),
                                        Column(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                'الاجمالي',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                total.toString(),
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                'الخصم',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                discount.toString(),
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                'الضريبه',
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            //الاجمالي
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                tax.toString(),
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 20.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                    height: 20.0,
                                    margin:
                                        EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                                  ),
                                ),

                                //..........قائمه الفاتوره.......
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    height: 300.0,
                                    child: Scrollbar(
                                      controller: cinvo,
                                      trackVisibility: true,
                                      thumbVisibility: true,
                                      child: ListView.builder(
                                          controller: cinvo,
                                          scrollDirection: Axis.vertical,
                                          itemCount: reset.length,
                                          itemBuilder: (context, index) {
                                            //كونتنر حسابات الفاتوره
                                            return Container(
                                              margin: EdgeInsets.all(3.0),
                                              height: 30.0,
                                              color: Colors.white,
                                              child: Row(
                                                children: <Widget>[
                                                  Expanded(
                                                    flex: 1,
                                                    child: IconButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            reset.remove(
                                                                reset[index]);
                                                            total = prisitem[
                                                                    index] -
                                                                total;
                                                          });
                                                        },
                                                        icon: Icon(
                                                          Icons.cancel_outlined,
                                                          size: 20.0,
                                                          color:
                                                              Colors.redAccent,
                                                        )),
                                                  ),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Text('prise')),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Text(
                                                      reset[index],
                                                      style: TextStyle(
                                                          fontSize: 15.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.blue),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                //........ازرار الفاتوره........
                                Container(
                                  height: 30.0,
                                  child: Row(
                                    children: [
                                      //.......زر البيع............
                                      Expanded(
                                        flex: 3,
                                        child: Container(
                                            child: TextButton(
                                                child: Icon(
                                                  Icons
                                                      .add_shopping_cart_outlined,
                                                  color: Colors.white,
                                                  size: 15.0,
                                                ),
                                              
                                                onPressed: () {
                                                  setState(() {});
                                                })),
                                      ),
                                      SizedBox(
                                        width: 2.0,
                                      ),
                                      //.......زر الالغاء..........
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: TextButton(
                                              child: Icon(
                                                Icons.cancel,
                                                color: Colors.white,
                                                size: 15.0,
                                              ),
                                             
                                              onPressed: () {
                                                setState(() {
                                                  total = 0;
                                                  reset.clear();
                                                });
                                              }),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
              //..............................كونتر العملاء.............................
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0.0, 1.0, 0.0, 0.0),
                    color: colorthem,
                    child: Row(
                      children: [
                        //.............اسم العميل............
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.white,
                            height: 50,
                            child: TextField(
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                namecust = value;
                              },
                              decoration: InputDecoration(
                                hintText: 'اسم العميل',
                              ),
                            ),
                          ),
                        ),
                        //........التلفون......
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.white,
                            height: 50,
                            child: TextField(
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                nomcust = value;
                              },
                              decoration: InputDecoration(
                                hintText: 'التلفون',
                              ),
                            ),
                          ),
                        ),
                        //........العنوان......
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.white,
                            height: 50,
                            child: TextField(
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                adrcust = value;
                              },
                              decoration: InputDecoration(
                                hintText: 'العنوان',
                              ),
                            ),
                          ),
                        ),
                        //......زرار الحفظ......
                        Expanded(
                            flex: 1,
                            child: Container(
                              height: 50.0,
                              child: TextButton(
                                  
                                  child: Text(
                                    'SAVE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 30),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (namecust == null ||
                                          nomcust == null ||
                                          adrcust == null) {
                                      } else {
                                        lcustmrname.add(namecust);
                                        lcustmrnom.add(nomcust);
                                        lcustmradr.add(adrcust);
                                        namecust = null;
                                        nomcust = null;
                                        adrcust = null;
                                      }
                                    });
                                  }),
                            ))
                      ],
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(15.0),
                width: 98.0,
                height: 50.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 5.0,
                        color: Colors.grey)
                  ],
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: Image(image: AssetImage('assets/logob.png'))),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return splach();
                          }));
                        },
                        icon: Icon(
                          shadows: [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 10.0,
                                color: Colors.red)
                          ],
                          Icons.exit_to_app,
                          color: Colors.red,
                        ))
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class appsale extends StatefulWidget {
  const appsale({Key? key}) : super(key: key);

  @override
  State<appsale> createState() => _appsaleState();
}

class _appsaleState extends State<appsale> {
  @override
  Widget build(BuildContext context) {
    if (tiklock != true) {
      return Expanded(
        flex: 1,
        child: Row(
          children: [
            Spacer(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //.....كلمه صاله

                  Expanded(
                    flex: 1,
                    child: Text(
                      'صاله',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  //...ليسته صاله...
                  Container(
                    height: 30.0,
                    child: DropdownButton(
                      dropdownColor: Colors.black,
                      iconDisabledColor: Colors.white,
                      iconEnabledColor: Colors.white,
                      items: [
                        "رقم التربيزه",
                        "1",
                        "2",
                        "3",
                      ]
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  "$e",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selctedsal = val.toString();
                        });
                      },
                      value: selctedsal,
                    ),
                  ),
                  //....اختيار صاله..
                  Expanded(
                    flex: 1,
                    child: Radio(
                        value: 1,
                        groupValue: r2,
                        onChanged: (a) {
                          setState(() {
                            r2 = 1;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Spacer(),
            //......ديلفري....
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'ديلفري',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: DropdownButton(
                      dropdownColor: Colors.black,
                      iconDisabledColor: Colors.white,
                      iconEnabledColor: Colors.white,
                      items: [
                        "اسم الموصل",
                        "احمد",
                        "محمد",
                        "سامح",
                      ]
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  "$e",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selcteddelv = val.toString();
                        });
                      },
                      value: selcteddelv,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Radio(
                        value: 1,
                        groupValue: r2,
                        onChanged: (a) {
                          setState(() {
                            r2 = 1;
                          });
                        }),
                  ),
                ],
              ),
            ),
            Spacer(),
            //........ابلكيشن......
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      'ابلكيشن',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    child: DropdownButton(
                      dropdownColor: Colors.black,
                      iconDisabledColor: Colors.white,
                      iconEnabledColor: Colors.white,
                      items: [
                        "الابلكيشن",
                        "مرسول",
                        "اطلب",
                        "فوريره",
                      ]
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  "$e",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selctedabb = val.toString();
                        });
                      },
                      value: selctedabb,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Radio(
                        value: 1,
                        groupValue: r2,
                        onChanged: (a) {
                          setState(() {
                            r2 = 1;
                          });
                        }),
                  ),
                ],
              ),
            ),

            Spacer(),
          ],
        ),
      );
    } else {
      return Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            height: double.infinity,
          ));
    }
  }
}

class swtshthem extends StatefulWidget {
  const swtshthem({Key? key}) : super(key: key);

  @override
  State<swtshthem> createState() => _swtshthemState();
}

class _swtshthemState extends State<swtshthem> {
  @override
  Widget build(BuildContext context) {
    if (themnum == 1) {
      return Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              child: Image(fit: BoxFit.cover, image: AssetImage(im))),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black.withOpacity(0.8),
          ),
        ],
      );
    } else {
      return Container(
        width: double.infinity,
        height: double.infinity,
        color: themcolorss,
      );
    }
  }
}
