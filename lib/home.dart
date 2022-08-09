import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //       image: AssetImage("assets/images/sky2.jpg"), fit: BoxFit.fill),
      // ),
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 50, width: 50),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Enter the city",
                        style: GoogleFonts.dmSans(fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(height: 30, width: 30),
            ],
          )
        ],
      ),
    );
  }
}
