import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          title: Text('Weather App 🌞', style: GoogleFonts.notoSans()),
          centerTitle: true,
        ),
        drawer: Drawer(
          elevation: 3,
          backgroundColor: Colors.blueGrey[50],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SafeArea(
                child: Text(
                  'Made with❤by Amal Ganesh',
                  style: GoogleFonts.cookie(
                    textStyle: TextStyle(
                        color: Colors.black, letterSpacing: 1.2, fontSize: 19),
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

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Column()],
      ),
    );
  }
}
