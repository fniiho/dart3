import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(color: Colors.red),
        child: Center(child: Text("page1")));
  }
}
