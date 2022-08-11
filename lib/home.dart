// import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'weather.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

String nandu = "";

class _HomeState extends State<Home> {
  TextEditingController textController = TextEditingController();
  String displayText = "";
  String place = "";

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
              SizedBox(height: 40, width: 50),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("City",
                        style: GoogleFonts.dmSans(
                            fontSize: 26, letterSpacing: 0.2)),
                  ],
                ),
              ),
              SizedBox(height: 30, width: 0),
              SizedBox(
                width: 280,
                child: TextFormField(
                  controller: textController,
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
              SizedBox(height: 30, width: 15),
              Container(
                width: 180,
                height: 47,
                child: ElevatedButton(
                  child: Center(
                    child: Text(
                      "Check Weather ",
                      style: GoogleFonts.poppins(letterSpacing: 0.4),
                    ),
                  ),
                  onPressed: () async {
                    displayText = textController.text;
                    final redu = await getWeatherInfo(cityName: displayText);
                    print(displayText);
                  },
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: Weatherui(),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Weatherui extends StatefulWidget {
  Weatherui({Key? key}) : super(key: key);

  @override
  _WeatheruiState createState() => _WeatheruiState();
}

class _WeatheruiState extends State<Weatherui> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "$nandu  ",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
