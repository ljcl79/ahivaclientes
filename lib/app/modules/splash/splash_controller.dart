import 'package:ahiva/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  onInit() {
    super.onInit();
  }

  onReady() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(AppRoutes.LOGIN);
    });
    super.onReady();
  }
}
