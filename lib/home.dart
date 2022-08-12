// import 'dart:ui';

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'weather.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

String nandu = "";
String amal = " ";
String pre = ' ';
String cloudinfo = ' ';

class _HomeState extends State<Home> {
  TextEditingController textController = TextEditingController();
  String displayText = "";
  String place = "";

  bool isLoaded = false;
  num? temp;
  num? press;
  num? cover;
  String? appid;
  getCityWeather({required String cityname}) async {
    var client = http.Client();
    var uri =
        'http://api.openweathermap.org/data/2.5/weather?q=$cityname&APPID=$appid';

    // ----------------------------------------------------------------
    //  Place your app id in the app id field
    // ----------------------------------------------------------------

    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var data = response.body;
      var decodeData = jsonDecode(data);
//      print(data);
      updateUI(decodeData);
      setState(() {
        isLoaded = true;
      });
    } else {
      print(response.statusCode);
    }
  }

  updateUI(var decodedData) {
    setState(() {
      if (decodedData == null) {
        temp = 0;
        press = 0;
        cover = 0;
      } else {
        temp = decodedData['main']['temp'] - 273;
        press = decodedData['main']['pressure'];
        cover = decodedData['clouds']['all'];
      }
    });
  }

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
                    // final result = getWeatherInfo(cityName: displayText);
                    // print(displayText);

                    getCityWeather(cityname: displayText);
                    setState(() async {
                      temp = (temp! * 100).round() / 100.0;

                      nandu = temp.toString();
                      amal = "celsius";
                      pre = press.toString();
                      cloudinfo = "$cover";
                    });
                  },
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
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
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            "$nandu $amal",
            style: TextStyle(fontSize: 23, fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 5,
          ),
          Text("$pre"),
          SizedBox(
            height: 5,
          ),
          Text(
            "$cloudinfo",
            style: TextStyle(fontSize: 23, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
