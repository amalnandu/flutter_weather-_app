import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(13, 117, 191, 0.8),
          title: Text('Weather', style: GoogleFonts.poppins()),
          centerTitle: true,
        ),
        drawer: Drawer(
          elevation: 0,
          backgroundColor: Colors.grey.withOpacity(0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //   CircleAvatar(
              //   backgroundImage: NetworkImage(
              //       'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/facelift_2019/homepage/families-gallery/2022/04_12/family_chooser_tecnica_m.png'),
              // ),
              SizedBox(height: 13, width: 13),

              SafeArea(
                child: Text(
                  'Made with❤by Amal Ganesh',
                  style: GoogleFonts.cookie(
                    textStyle: TextStyle(
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2.0, -1.0),
                          blurRadius: 3.0,
                          color: Color.fromRGBO(0, 0, 0, 0.8),
                        ),
                      ],
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontSize: 19,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20, width: 20),
            ],
          ),
        ),
        body: SafeArea(
          child: Home(),
        ),
      ),
    );
  }
}
