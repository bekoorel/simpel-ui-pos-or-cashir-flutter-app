import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ckh {
  var id;
  var adl;
  var dlv;
  var liv;

  ckh({
    this.id,
    this.adl,
    this.dlv,
    this.liv,
  });

  factory ckh.fromJson(Map<String, dynamic> json) {
    return ckh(
      id: json["id"],
      adl: json["adl"],
      dlv: json["dlv"],
      liv: json["liv"],
    );
  }
}
