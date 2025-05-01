import 'dart:ffi';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:restapi/controller/city_controller.dart';
import 'package:restapi/controller/weather_controller.dart';
import 'package:get/get.dart';
import 'package:restapi/view/map_view.dart';

import '../../controller/map_controller.dart';

class Weather extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());
  final CityController cityController = Get.put(CityController());
  final GoogleMapsController mapController = Get.put(GoogleMapsController());


  // Home home= Home();
  Weather({super.key});
  void openMap() async {
    LatLng? pickedLocation = await Get.to(() => MapScreen());

    if (pickedLocation != null) {
      double lat = pickedLocation.latitude;
      double lan = pickedLocation.longitude;

      // print("Selected Location: ${pickedLocation.latitude}, ${pickedLocation.longitude}");
    } else {
      return null;
      // print("No location selected.");
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

//final double? lat = cityController.cityname.value.lat;
//final double? lan = cityController.cityname.value.lon;
    return Scaffold(

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Obx(()=>

                  Text('${weatherController.weather.value.clouds?.all}'),


              ), SizedBox(height: 30,),
              Obx(()=>

                  Text('${cityController.cityname.value.lat}'),


              ),

              SizedBox(height: 90,),
              Obx(()=>weatherController.weather.value.timezone != null
                  ? Text("Temperature Max: ${weatherController.weather.value.main?.tempMax!}",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                  : Text("No temperature data"),),
              SizedBox(height: 20,),
              Obx(()=> Text('${weatherController.weather.value.name}')),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    labelText: "Enter City Name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: TextField(
              //     controller: textEditingController,
              //     decoration: InputDecoration(
              //       labelText: "Enter City Name",
              //       border: OutlineInputBorder(),
              //     ),
              //   ),
              // ),

              SizedBox(height: 150,),
              ElevatedButton(onPressed: (){
                cityController.getCity(textEditingController.text, '+44');
                // weatherController.getWeather(lat, cityController.cityname.value.lon!);


              }, child: Text('GET WEATHER')),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                openMap();
                //weatherController.getWeather(42.5438, 129.0043);

                // cityController.getCity(textEditingController.text, '+44');

                //Navigator.push(context, MaterialPageRoute(builder: (context)=>MapScreen()));
              }, child: Text('GET City'))
            ],
          ),
        ),
      ),
    );
  }


}
