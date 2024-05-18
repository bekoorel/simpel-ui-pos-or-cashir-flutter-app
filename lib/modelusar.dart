import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class usar {
  var id;
  var n;
  var nu;
  var pass;
  var stat;
  var acs;

  usar({
    this.id,
    this.n,
    this.nu,
    this.pass,
    this.stat,
    this.acs,
  });

  factory usar.fromJson(Map<String, dynamic> json) {
    return usar(
      id: json["id"],
      n: json["n"],
      nu: json["nu"],
      pass: json["pass"],
      stat: json["stat"],
      acs: json["acs"],
    );
  }
}
