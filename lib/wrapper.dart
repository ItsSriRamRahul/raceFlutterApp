import'package:flutter/material.dart';
import 'package:race_app/screens/login_page.dart';
import 'package:race_app/screens/main_page.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key, required this.val}) : super(key: key);
  final bool val;
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    if(widget.val){
      return const main_page();
    }
    else{
      return const login_page();
    }
  }
}