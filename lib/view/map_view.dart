import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:restapi/view/home/weather.dart';

import '../controller/map_controller.dart';
import '../controller/weather_controller.dart';

class MapScreen extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());
  // late GoogleMapController _mapController;
  //
  // final LatLng _center = const LatLng(45.521563, -122.677433);
  MapScreen({super.key});

  final GoogleMapsController mapController = Get.put(GoogleMapsController());

  //RxInt counter = 0.obs;

  void onMapCreated(GoogleMapController controller){
    //  _mapController = controller;

    mapController.mapController.complete(controller);
  }
  void openMap() async {
    LatLng? pickedLocation = await Get.to(() => MapScreen());

    if (pickedLocation != null) {
      double lat = pickedLocation.latitude;
      double lan = pickedLocation.longitude;
      // print("Selected Location: ${pickedLocation.latitude}, ${pickedLocation.longitude}");
    } else {
      // print("No location selected.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return
       SafeArea(
         child: Scaffold(

            body: Stack(
              children: [
                Obx(()=> GoogleMap(
                  onMapCreated: onMapCreated,
                  onTap: mapController.onMapTapped,

                  initialCameraPosition: CameraPosition(
                      zoom: 10.0,
                      target: mapController.currentPosition.value),
                  markers: {
                    Marker(markerId: MarkerId('search location'),
                        position: mapController.currentPosition.value
                    )
                  },


                ),),
                Container(
                                  decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 4)
                ],
                                  ),
                                  child: Row(
                children: [
                  Expanded(child: TextFormField(
                    controller: mapController.searchController,
                    decoration: InputDecoration(
                      hintText: "Enter location",
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                  )),
                  IconButton(onPressed: (){
                    mapController.searchLocation();

                  }, icon: Icon(Icons.search))
                ],
                                  ),

                                ),
                Positioned(
                  bottom: 100,
                  right: 60,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Weather()));
                    weatherController.getWeather(mapController.currentPosition.value.latitude, mapController.currentPosition.value.longitude);

                  }, child: Text('Get Weather')),
                )

              ],
            )


             ),
       );
  }
}
