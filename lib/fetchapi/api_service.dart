import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/city_model.dart';
import '../models/weather_model.dart';



class ApiService{
  
  static Future<WeatherModel?> fetchData(double? lat, double? lan) async{
    final apiKey = "73ee1c59a9aa797247b7dab98670e70e"; // Replace with your OpenWeather API key
   // final url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=73ee1c59a9aa797247b7dab98670e70e");
   // final url = Uri.parse('https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m,wind_speed_10m,relative_humidity_2m,rain,showers,snowfall');

final url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lan&appid=73ee1c59a9aa797247b7dab98670e70e");


    try {
      final response = await http.get(url);
      if(response.statusCode == 200){
        var jsonData = jsonDecode(response.body);
        return WeatherModel.fromJson(jsonData);

      }else{
        return null;


      }


    }catch(e){
      print('Error:$e');
      return null;
    }

  }
}

