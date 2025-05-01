import 'dart:ffi';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:restapi/controller/city_controller.dart';
import 'package:restapi/controller/weather_controller.dart';
import 'package:get/get.dart';
import 'package:restapi/view/map_view.dart';

import '../../controller/map_controller.dart';
import '../widget/formField.dart';

class Home extends StatelessWidget {

   Home({super.key


   });

  final WeatherController weatherController = Get.put(WeatherController());

  final CityController cityController = Get.put(CityController());

  final GoogleMapsController mapController = Get.put(GoogleMapsController());

  @override
  void onInit() {
    //super.onInit();
   mapController.searchLocation();
  }

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
      backgroundColor: Colors.black87,
appBar: AppBar(
  backgroundColor: Colors.black87,
  title: Text('Weather App',style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
),
      body: SingleChildScrollView(
        child:Obx(()=> Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextEditor(hintText: 'Search Location',  textEditingController: textEditingController, )),
            ),

            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  fit: BoxFit.fitHeight,
                
                    height: 300,
                    image: AssetImage('assets/images/Rectangle.png')
                
                ),
              ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text('${weatherController.weather.value.name}', style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    SizedBox(height: 70,),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('${weatherController.weather.value.main?.tempMax!}'),
                          ),
                          Icon(Icons.cloud, color: Colors.white,)
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text('date'),
                        )
                      ],
                    ),
                    SizedBox(height: 50,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 10, ),
                           child: Column(
                             children: [
                               Text('Humidity'),
                               Text('Humidity'),
                             ],
                           ),

                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10, ),
                           child: Column(
                             children: [
                               Text('Humidity'),
                               Text('Humidity'),
                             ],
                           ),

                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 10, ),
                           child: Column(
                             children: [
                               Text('Humidity'),
                               Text('Humidity'),
                             ],
                           ),

                         ), Padding(
                           padding: const EdgeInsets.only(left: 10, ),
                           child: Column(
                             children: [
                               Text('Humidity'),
                               Text('Humidity'),
                             ],
                           ),

                         ),


                       ],
                    )

                  ],
                )
      ]
            ),
          ],
        ),
    )
        

      ),
    );
  }
}
// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// SizedBox(height: 30,),
// Obx(()=>
//
// Text('${weatherController.weather.value.clouds?.all}'),
//
//
// ), SizedBox(height: 30,),
// Obx(()=>
//
// Text('${weatherController.weather.value.main?.feelsLike}'),
//
//
// ),
//
// SizedBox(height: 90,),
// Obx(()=>weatherController.weather.value.timezone != null
// ? Text("Temperature Max: ${weatherController.weather.value.main?.tempMax!}",
// style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
//     : Text("No temperature data"),),
// SizedBox(height: 20,),
// Obx(()=> Text('${weatherController.weather.value.name}')),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20),
// child: TextField(
// controller: textEditingController,
// decoration: InputDecoration(
// labelText: "Enter City Name",
// border: OutlineInputBorder(),
// ),
// ),
// ),
// // Padding(
// //   padding: const EdgeInsets.symmetric(horizontal: 20),
// //   child: TextField(
// //     controller: textEditingController,
// //     decoration: InputDecoration(
// //       labelText: "Enter City Name",
// //       border: OutlineInputBorder(),
// //     ),
// //   ),
// // ),
//
// SizedBox(height: 150,),
// ElevatedButton(onPressed: (){
// //cityController.getCity(textEditingController.text, '+44');
// // weatherController.getWeather(lat, cityController.cityname.value.lon!);
// weatherController.getWeather(mapController.currentPosition.value.latitude, mapController.currentPosition.value.longitude);
//
// }, child: Text('GET WEATHER')),
// SizedBox(height: 30,),
// ElevatedButton(onPressed: (){
// openMap();
// //weatherController.getWeather(42.5438, 129.0043);
//
// // cityController.getCity(textEditingController.text, '+44');
//
// //Navigator.push(context, MaterialPageRoute(builder: (context)=>MapScreen()));
// }, child: Text('GET City'))
// ],
// ),
// ),