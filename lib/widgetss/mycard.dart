import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:race_app/models/data.dart';
import 'package:race_app/models/featuredModel.dart';
import 'package:race_app/providers/search_bar_prov.dart';
import 'package:race_app/screens/card_screen.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key, required this.datain}) : super(key: key);
  final featuredModel datain;
  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
   
    return GestureDetector(
      onTap: () => Navigator.push(context, 
      MaterialPageRoute(
        builder: (context)=>cardScreen(data: widget.datain)  )
        ) ,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: (Stack(
          children: [
            Container(
              height: 250,
              width: 190,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),boxShadow: [BoxShadow(color:Colors.white.withOpacity(0.3),blurRadius: 5,offset: const Offset(
                          5.0,
                          5.0,
                        ), 
                        spreadRadius: 1.0, )]),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    widget.datain.url,
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              height: 250,
              width: 200,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff031221).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      '${widget.datain.rating.toString()}%',
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7.5, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "${widget.datain.name}",
                        style: GoogleFonts.poppins(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      Text("${widget.datain.subtext}",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ]),
            )
          ],
        )),
      ),
    );
  }
}
