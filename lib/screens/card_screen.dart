// ignore_for_file: camel_case_types, sized_box_for_whitespace

import'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:race_app/models/featuredModel.dart';
import 'package:race_app/providers/favourite_prov.dart';

class cardScreen extends StatefulWidget {
  const cardScreen({Key? key,required this.data}) : super(key: key);
  final featuredModel data;
  @override
  State<cardScreen> createState() => _cardScreenState();
}

class _cardScreenState extends State<cardScreen> {
  
  @override
  Widget build(BuildContext context) {
    return(
        
         Scaffold(body:
                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Stack(
                    children: [
                      Container(
              height: 400,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    child: Image.network(
                    widget.data.url,
                    fit: BoxFit.cover,
                     
                  )),
            ),
            Container(
              height: 400,
              child: Column(
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,50,0,0),
                        child: GestureDetector(
                          onTap:() => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back_ios_new_rounded,size: 30,color: Colors.white,)),
                      ),
                       Padding(
                        padding: EdgeInsets.fromLTRB(0,50,10,0),
                        child: GestureDetector(
                          onTap: () => Provider.of<favourite>(context,listen: false).addFavourite(widget.data),
                          child: Icon(Icons.favorite_border_outlined,size: 30,color: Colors.white)),
                      )
                    ],
                  ),
                  const Spacer(flex: 1,),
                  
                     Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,10,0,0),
                        child: Text(widget.data.name,style: GoogleFonts.bebasNeue(fontSize: 40,letterSpacing: 5,shadows: 
                        <Shadow>[
                  Shadow(
            offset: Offset(1.0, 1.0),
          
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      
    ],),),
                      )),
                      const SizedBox(height: 2,),
                     Row( mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,0,20),
                        child: Text(widget.data.subtext,style: GoogleFonts.bebasNeue(fontSize: 25,letterSpacing: 5,shadows:<Shadow>[
                  Shadow(
            offset: Offset(1.0, 1.0),
          
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      
    ] )),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.lightGreenAccent.withOpacity(0.8),borderRadius: BorderRadius.circular(10),
                          border: Border.all() ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('${widget.data.rating} %',style: GoogleFonts.bebasNeue(fontSize: 20,shadows:<Shadow>[
                  Shadow(
            offset: Offset(1.0, 1.0),
          
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      
    ])),
                          )),
                      )],
                     )
               ,   const SizedBox(height: 10,)
                ]
              ),
            )
                   ],
                  ),
                  const SizedBox(height:10),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18,0,0,0),
                    child:  Text('Description:',style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),),
                  ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18,0,0,0,),
                  child: Text('dLorem Ipsum is simply dummy text of the printing and typesetting industry. ',style: GoogleFonts.poppins(fontSize:18)),
                ),
                
                Spacer(flex: 1,),
                Stack(
                  children:[ Container(
                    height: 110,
                    decoration: BoxDecoration(color: Colors.white),
                  
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,10,0,0),
                          child: Text('Price:',style: GoogleFonts.poppins(fontSize:18,color: Colors.black,fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20,0,0,10),
                          child: Text('50Usd',style: GoogleFonts.poppins(fontSize:24,color: Colors.black,fontWeight: FontWeight.w700,letterSpacing: 3)),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,20,0),
                    child: Container(height: 60,width: 160
                    ,
                    decoration:BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30,0,0,0),
                          child: Icon(Icons.sports_basketball_outlined),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('BOOK',style: GoogleFonts.poppins(fontSize:20,color: Colors.white,fontWeight: FontWeight.w500,letterSpacing: 3)),
                        ),
                      ],
                    ),
                    ),
                  )
                ],)
                                 ]               )
        ],
        
        ) ,));
  }
}