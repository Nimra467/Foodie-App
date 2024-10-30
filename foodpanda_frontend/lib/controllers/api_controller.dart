import 'package:foodpanda_frontend/services/api_service.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  final ApiService apiService = ApiService();
  var data = [].obs;

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    try {
      data.value = await apiService.fetchData('restuarants');
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
