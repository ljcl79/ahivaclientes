import 'package:ahiva/app/modules/dash/dash_controller.dart';
import 'package:ahiva/app/modules/home/home_controller.dart';
import 'package:get/get.dart';

class DashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashController());
  }
}
