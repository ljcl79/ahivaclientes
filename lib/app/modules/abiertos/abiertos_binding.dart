import 'package:ahiva/app/modules/abiertos/abiertos_controller.dart';
import 'package:get/get.dart';

class AbiertosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AbiertosController());
  }
}
