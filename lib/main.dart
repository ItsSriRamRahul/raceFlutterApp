
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:race_app/providers/favourite_prov.dart';


import './providers/search_bar_prov.dart';
import 'package:race_app/wrapper.dart';



void main() => runApp(
  MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>searchBarState()),
    ChangeNotifierProvider(create: (_)=>favourite())
  ],
  child: MyApp(),)
  
  );

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    
    return (
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff031221),
          brightness: Brightness.dark),
          home: MyWidget(val: true),
      )
    );
  }
}
