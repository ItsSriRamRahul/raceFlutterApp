import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyBadge extends StatefulWidget {
  const MyBadge({Key? key}) : super(key: key);

  @override
  State<MyBadge> createState() => _MyBadgeState();
}

class _MyBadgeState extends State<MyBadge> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 270,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://res.klook.com/image/upload/Mobile/City/kfrjwsey0bomkuxgkqrr.jpg',
                fit: BoxFit.fill,
              )),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 70,
            width: 270,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('florence',
                            style: GoogleFonts.poppins(fontSize: 24)),
                        Text(
                          '📍 italy',
                          style: GoogleFonts.poppins(fontSize: 16),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('⭐ 3.7'),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
