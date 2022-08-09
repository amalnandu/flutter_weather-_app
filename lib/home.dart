import 'dart:ui';

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
                    Text("City",
                        style: GoogleFonts.dmSans(
                            fontSize: 19, letterSpacing: 0.2)),
                  ],
                ),
              ),
              SizedBox(height: 20, width: 0),
              SizedBox(
                width: 280,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.location_on, size: 30,
                        color: Colors.grey,
                        // size: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      )),
                ),
              ),
              SizedBox(height: 20, width: 15),
              Container(
                  width: 120,
                  child: ElevatedButton(
                    child: Text(
                      "Submit",
                      style: GoogleFonts.poppins(letterSpacing: 1),
                    ),
                    onPressed: () {},
                  ))
            ],
          )
        ],
      ),
    );
  }
}
