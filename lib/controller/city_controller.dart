import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:restapi/fetchapi/api_service.dart';
import 'package:restapi/fetchapi/city_service.dart';
import 'package:restapi/models/city_model.dart';
import 'package:restapi/models/weather_model.dart';



class CityController extends GetxController{
  var cityname = CityModel().obs;
  var isLoading = true.obs;




  Future<void> getCity(String city, String countryCode) async{

    isLoading.value=true;
    var data = await CityService.fetchCity(city, countryCode);
    if(data != null){
      cityname.value= data;

    }    else{

      cityname.value=CityModel(

      );
    }
    isLoading.value=false;

  }


}
