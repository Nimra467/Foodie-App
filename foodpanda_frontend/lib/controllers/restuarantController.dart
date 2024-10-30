import 'package:foodpanda_frontend/models/restuarant_model.dart';
import 'package:foodpanda_frontend/services/restuarant_service.dart';
import 'package:get/get.dart';

class RestaurantController extends GetxController {
  var restaurants = <Restaurant>[].obs; // Observable list

  final RestaurantService restaurantService = RestaurantService();

  @override
  void onInit() {
    fetchRestaurants();
    super.onInit();
  }

  void fetchRestaurants() async {
    try {
      var fetchedRestaurants = await restaurantService.fetchRestaurants();
      restaurants.assignAll(fetchedRestaurants);
    } catch (e) {
      print("Error fetching restaurants: $e");
    }
  }
}
