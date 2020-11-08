import 'package:ahiva/app/modules/porenviar/porenviar_controller.dart';
import 'package:get/get.dart';

class PorEnviarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PorEnviarController());
  }
}
