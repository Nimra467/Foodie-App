import 'package:foodpanda_frontend/models/food_itemModel.dart';

class Restaurant {
  final String id;
  final String name;
  final String address;
  final List<FoodItem> foods; // Assuming FoodItem is another model you created

  Restaurant({required this.id, required this.name, required this.address, required this.foods});

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    var list = json['foods'] as List;
    List<FoodItem> foodList = list.map((i) => FoodItem.fromJson(i)).toList();

    return Restaurant(
      id: json['_id'],
      name: json['name'],
      address: json['address'],
      foods: foodList,
    );
  }
}
