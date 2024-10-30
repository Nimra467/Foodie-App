import 'dart:convert';
import 'package:foodpanda_frontend/models/restuarant_model.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';


class RestaurantService extends GetxService {
  final String baseUrl = 'http://192.168.56.1:3000/api/restaurants'; // Update with your actual URL

  Future<List<Restaurant>> fetchRestaurants() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((restaurant) => Restaurant.fromJson(restaurant)).toList();
      } else {
        throw Exception('Failed to load restaurants');
      }
    } catch (e) {
      throw Exception('Failed to fetch restaurants: $e');
    }
  }
}
