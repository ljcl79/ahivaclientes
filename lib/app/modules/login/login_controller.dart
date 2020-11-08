import 'package:ahiva/app/data/models/types.dart';
import 'package:flutter/material.dart';
import 'package:ahiva/app/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  int loading = 0;
  List<String> inputfields = [
    'username',
    'password',
  ];

  List<String> picklistfields = [];
  List<String> datetimefields = [];
  List<Item> picklistvalues = [];
  List<TextEditingController> ctrl = [];

  @override
  void onInit() {
    // TODO: implement onInit
    int i = 0;
    for (int i = 0; i < inputfields.length; i++)
      ctrl.add(TextEditingController());

    for (int i = 0; i < picklistfields.length; i++)
      picklistvalues.add(Item('', null));

    super.onInit();
  }

  @override
  void onClose() {
    for (int i = 0; i < inputfields.length; i++) ctrl[i]?.dispose();
    super.onClose();
  }

  Future<void> loginUser() async {
    loading = 1;
    update(['login']);
    final int isConnect =
        1; //await API.instance.getSession('admin', 'wuap2020');

    if (isConnect == 1) {
      Future.delayed(const Duration(seconds: 2), () {
        Get.offNamed(AppRoutes.HOME);
        loading = 0;
        update(['login']);
      });
    }
  }
}
