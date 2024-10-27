import 'package:get/get.dart';

class NavController extends GetxController {
  var myIndex = 0.obs;

  void updateIndex(int index) {
    myIndex.value = index;
  }
}
