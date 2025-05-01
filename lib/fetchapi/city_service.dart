import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/city_model.dart';

class CityService{
  static Future<CityModel?> fetchCity(String city, String countryCode) async{
    final urlcity = Uri.parse("http://api.openweathermap.org/geo/1.0/direct?q=$city,$countryCode&limit=5&appid=73ee1c59a9aa797247b7dab98670e70e");
    try {
      final location =await http.get(urlcity);
      if(location.statusCode ==200){
        var jsonData = jsonDecode(location.body);
        return CityModel.fromJson(jsonData);
      }else{
        return null;
      }



    }catch(e){
      return null;
    }
  }

}