
import 'package:get/get.dart';
import 'package:forked/Controllers/RegisterationNavController.dart';

class startPageBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(RegisterationController());
  }
}