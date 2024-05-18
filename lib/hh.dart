import 'package:flutter/material.dart';
import 'sqlflite.dart';
import 'sitting.dart';

class p extends StatefulWidget {
  const p({Key? key}) : super(key: key);

  @override
  State<p> createState() => _pState();
}

class _pState extends State<p> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${term}',
      softWrap: true,
      style: TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
