import 'package:flutter/material.dart';
class mytext extends StatelessWidget {
  const mytext({Key? key,required this.word}) : super(key: key);
  final String word;
  @override
  Widget build(BuildContext context) {
    return(
      Text(word)
    );
  }
}