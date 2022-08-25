import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarCustom extends StatefulWidget {
  const AppBarCustom({Key? key}) : super(key: key);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    
    return (Container(
        height: 90,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Icon(
                  Icons.menu,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Version1",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
                child: CircleAvatar(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                            'https://play-lh.googleusercontent.com/nCVVCbeSI14qEvNnvvgkkbvfBJximn04qoPRw8GZjC7zeoKxOgEtjqsID_DDtNfkjyo'))),
              )
            ],
          ),
        )));
  }
}
