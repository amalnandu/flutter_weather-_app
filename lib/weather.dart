import 'package:http/http.dart' as http;

String? cityName;
Future<void> getWeatherInfo({required String cityName}) async {
  final response = await http.get(Uri.parse(
      'http://api.openweathermap.org/data/2.5/weather?q=$cityName&APPID=22a0934e45e05f392a3cee4b9cf29409'));
  print(response.body);

  // final bodyasJson = jsonDecode(response.body) as Map<String, dynamic>;
  // final data = weatherdetails.fromJson(bodyasJson);
  //return data;
}
