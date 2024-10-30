// controllers/location_controller.dart
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

class LocationController extends GetxController {
  var currentLocation = ''.obs;
  var latitude = 0.0.obs;
  var longitude = 0.0.obs;

  Future<void> updateLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    latitude.value = position.latitude;
    longitude.value = position.longitude;
    currentLocation.value = 'Your Location: ${position.latitude}, ${position.longitude}';
  }
}
