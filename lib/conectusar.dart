//.........................هنا سكريبت الاتصال بالداتا بيز الخارجيه...........

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:pos/enterip.dart';

import 'package:pos/modelusar.dart';
import 'package:pos/navg.dart';

import 'package:pos/splach.dart';

int swt = 0;
var chacklogin = [];
//.................................................

var ip1, ip2, ip3, ip4;

Future<List<usar>> getPostById() async {
  if (ip1 == null && ip2 == null && ip3 == null && ip4 == null) {
    ip1 = 192;
    ip2 = 168;
    ip3 = 89;
    ip4 = 172;
    notictextip =
        '  لقد تم الاتصال تلقائيا علي قاعده البيانات صاحبه رقم ........$ip1$ip2$ip3$ip4.....اذا كنت لاتريد الاتصال علي قاعده بيانات اخري فقد اضغط اتصال';
  }
  http.Response futurepost =
      await http.get(Uri.parse("http://$ip1.$ip2.$ip3.$ip4/"));
  if (futurepost.statusCode == 200) {
    
    print(futurepost.body); // الداتا الجيسون جت هنا

    List data = jsonDecode(futurepost.body);
    List<usar> allusr = [];
    for (var u in data) {
      usar usarsroll = usar.fromJson(u);
      allusr.add(usarsroll);
    }
    chacklogin = allusr;

    return allusr;
  } else {
    
    
    return throw Exception('انقطع الاتصال');
  }
}

Future<List<usar>>? postdata;

//.................................................

class Conect extends StatefulWidget {
  const Conect({Key? key}) : super(key: key);

  @override
  State<Conect> createState() => ConectState();
}

class ConectState extends State<Conect> {
  @override
  @override
  void initState() {
    postdata = getPostById();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Center(
            child:
                CircularProgressIndicator() /*FutureBuilder<List<usar>>(
              future: postdata,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (Context, index) {
                        return Container(
                          margin: EdgeInsets.all(2.0),
                          color: Colors.yellow,
                          alignment: Alignment.center,
                          child: Text(
                              'id : ${snapshot.data![index].id}    n : ${snapshot.data![index].n}    nu : ${snapshot.data![index].nu}    pass : ${snapshot.data![index].pass}    stat : ${snapshot.data![index].stat}    acs : ${snapshot.data![index].acs}'),
                        );
                      });
                } else {
                   if (snapshot.hasData) {
                    
                    return splach();
                  } else if (snapshot.hasError) {
                    textloddb = 'ربما حدث خطا او وصول البيانات بشكل غير صحيح';
                    return navg();
                  }

                  textloddb = 'تاكد من اتصالك بقاعده البيانات (خطا)';

                  return navg();
                  

                 
                }
              }),*/
            ),
      ),
    );
  }
}
