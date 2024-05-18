/*//.........................هنا سكريبت الاتصال بالداتا بيز الخارجيه...........

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pos/tabol.dart';

import 'dart:convert' as convert;

import 'midels.dart';

String akm = 'خطاء بالاتصال';

Future<ckh> getPostById() async {
  http.Response futurepost =
      await http.get(Uri.parse("http://192.168.89.172/"));
  if (futurepost.statusCode == 200) {
    print(futurepost.body); // الداتا الجيسون جت هنا

    print('تم الاتصال برقم الاي بي والوصول للبيانات');
    return ckh.fromJson(convert.jsonDecode(futurepost.body));
  } else {
    return throw Exception('انقطع الاتصال');
  }
}

class conect extends StatefulWidget {
  const conect({Key? key}) : super(key: key);

  @override
  State<conect> createState() => conectState();
}

class conectState extends State<conect> {
  initstate() async {
    super.initState();
  }

  Future<ckh> postdata = getPostById();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: FutureBuilder<ckh>(
              future: postdata,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  akm = snapshot.data?.dlv;
                } else if (snapshot.hasError) {
                  return CircularProgressIndicator();
                }

                return CircularProgressIndicator();
              }),
        ),
      ),
    );
  }
}

ckh f = ckh();

Future<ckh> getPostById() async {
  http.Response futurepost =
      await http.get(Uri.parse("http://192.168.143.172/"));
  if (futurepost.statusCode == 200) {
    print(futurepost.body); // الداتا الجيسون جت هنا

    print('تم الاتصال برقم الاي بي والوصول للبيانات');
    return ckh.fromJson(convert.jsonDecode(futurepost.body));
  } else {
    return throw Exception('انقطع الاتصال');
  }

  /*var url = await http.get(Uri.parse("http://192.168.189.172/abb/"));
    if (url.statusCode == 200) {
      return convert.jsonDecode(url.body);
    }*/
}

class dis extends StatefulWidget {
  const dis({Key? key}) : super(key: key);

  @override
  State<dis> createState() => _disState();
}

class _disState extends State<dis> {
  initstate() async {
    super.initState();
  }

  Future postdata = getPostById();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Container(
              child: FutureBuilder(
                  future: postdata,
                  builder: ((context, snapshot) {
                    print('تم الدخول');
                    print('الفريبول قبل الدخول $postdata');
                    if (snapshot.hasData) {
                      print("اول ريترن");
                      return Text(
                          'تم الوصول///// ${f.dlv.toString()}////// ${postdata}/////// ${getPostById()} ${snapshot}');
                    } else {
                      print('تم الدخول الي معالج الاخطاء');

                      return Text(' لسه البيانات مسمعتش ${postdata}');
                    }
                  }))),
        ));
  }
}

*/