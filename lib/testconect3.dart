import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert' as convert;

import 'midels.dart';

Future<ckh> getPostById() async {
  http.Response futurepost =
      await http.get(Uri.parse("http://192.168.89.172/"));
  if (futurepost.statusCode == 200) {
    print(futurepost.body); // الداتا الجيسون جت هنا

    print('تم الاتصال برقم الاي بي والوصول للبيانات');
    return ckh.fromJson(convert.json.decode(futurepost.body));
  } else {
    return throw Exception('انقطع الاتصال');
  }
}

class testconect extends StatefulWidget {
  const testconect({Key? key}) : super(key: key);

  @override
  State<testconect> createState() => _testconectState();
}

class _testconectState extends State<testconect> {
  Future<ckh>? postdata;

  @override
  initstate() {
    super.initState();

    postdata = getPostById();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<ckh>(
            future: postdata,
            builder: (Context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.dlv);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              return Row(
                children: [
                  TextButton(onPressed: () {
                    setState(() {
                      getPostById();
                    });
                  },child: Text('data'),),
                  Text('${postdata}///${snapshot}')
                ],
              );
            }),
      ),
    );
  }
}
