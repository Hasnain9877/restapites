import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';
import 'package:geocoding/geocoding.dart';
import 'package:restapi/fetchapi/location_per_services.dart';
import 'package:restapi/view/map_view.dart';
import 'package:geolocator/geolocator.dart';

import '../view/home/home.dart';



class GoogleMapsController extends GetxController {
  Completer<GoogleMapController> mapController = Completer();
  var searchController = TextEditingController();
  var currentPosition = LatLng(0.0, 0.0).obs;

  // LatLng lat = 0.0.obs as LatLng;
  // var lan = 0.obs;
  @override
  void onInit() {
    super.onInit();
    searchLocation();
  }

  void onMapTapped(LatLng position) {
    currentPosition.value = position;

  }
  void openMap() async {
    LatLng? pickedLocation = await Get.to(() => MapScreen());
    if (pickedLocation != null) {


      //print("Selected Location: ${pickedLocation.latitude}, ${pickedLocation.longitude}");
    }
  }
  Future<void> searchLocation() async {
    String searchText = searchController.text;

    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
     // List<Location> locations = await locationFromAddress(searchText);
      //Location location =position.first;
      currentPosition.value = LatLng(position.latitude, position.longitude);
     // LatLng lat = location.latitude as LatLng;
     // LatLng lan = location.longitude as LatLng;
      final GoogleMapController controller = await mapController.future;
      controller.animateCamera(CameraUpdate.newLatLng(currentPosition.value));


    }catch(e){
      print('error$e');

    }

  }






}