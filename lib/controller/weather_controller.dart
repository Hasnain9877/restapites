import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:restapi/fetchapi/api_service.dart';
import 'package:restapi/fetchapi/location_per_services.dart';
import 'package:restapi/models/weather_model.dart';

import 'map_controller.dart';



class WeatherController extends GetxController{
  var weather = WeatherModel().obs;
  var isLoading = true.obs;
  final GoogleMapsController mapController = Get.put(GoogleMapsController());


@override
  void onInit(){
  getWeather(mapController.currentPosition.value.latitude, mapController.currentPosition.value.longitude);
  super.onInit();
}


  Future<void> getWeather(double? lat, double? lan) async{

    isLoading.value=true;

    var data = await ApiService.fetchData(lat, lan);
    if(data != null){
      weather.value= data;

    }    else{

      weather.value=WeatherModel(

      );
    }
    isLoading.value=false;

  }

}
