import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class TrackOrderController extends GetxController {
  var orderStages = [
    {"time": "04:30pm", "status": "Confirmed"},
    {"time": "04:38pm", "status": "Processing"},
    {"time": "04:50pm", "status": "On the way"},
    {"time": "05:10pm", "status": "Delivered"},
  ].obs;

  var deliveryPersonName = "Mr Kemplas".obs;
  var deliveryTime = "25 minutes on the way".obs;
  var orderId = "4544882266".obs;

  Future<void> callDeliveryPerson() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: '+123456789', // Replace with actual phone number
    );
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      Get.snackbar('Error', 'Could not launch call');
    }
  }
}
