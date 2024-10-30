import 'dart:developer';
import 'package:foodpanda_frontend/models/lat_lng.dart';
import 'package:geocoding/geocoding.dart';
import 'package:url_launcher/url_launcher.dart';

class MapLauncher {
  MapLauncher._();

  static Future<LatLng?> getDestinationCoordinates(String address) async {
    try {
      List<Location> locations = await locationFromAddress(address);
      if (locations.isNotEmpty) {
        return LatLng(locations[0].latitude, locations[0].longitude);
      }
    } catch (e) {
      log('Error getting destination coordinates: $e');
    }
    return null;
  }

  static Future<void> openGoogleMapsHomePage() async {
  final uri = Uri(
    scheme: "https",
    host: "www.google.com",
    path: "/maps",
  );
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    log('Unable to open Google Maps home page.');
  }
}

}
