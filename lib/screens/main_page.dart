

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:race_app/providers/favourite_prov.dart';
import 'package:race_app/providers/search_bar_prov.dart';

import '../models/data.dart';
import '../models/featuredModel.dart';
import '../widgetss/appbar.dart';
import '../widgetss/mycard.dart';
import '../widgetss/mytext.dart';
import '../widgetss/search.dart';

class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  final List Data = finaldata;
  List<featuredModel> Featured = [];
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    
      Featured = featureddata;
    
    
    return 
       
      
       Scaffold(
          
          body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return true;
        },
        child: ListView(
          children:[ Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarCustom(),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SearchBar(),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Featured :",
                style: GoogleFonts.bebasNeue(
                    fontSize: 32, fontWeight: FontWeight.w400)),
          ),
          SizedBox(
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Featured.length,
                itemBuilder: (context, index) {
                  return (MyCard(
                    datain: Featured[index],
                  ));
                },
              )),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text("Top Rated:",
                style: GoogleFonts.bebasNeue(
                    fontSize: 32, fontWeight: FontWeight.w700)),
          ),
          SizedBox(
            height: 25,
          ),
         
        
        ],
          )],
  ),
      ));
  }
}

 