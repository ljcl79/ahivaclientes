import 'package:ahiva/app/modules/splash/splash_controller.dart';
import 'package:ahiva/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: AhivaColors.white,
          child: Image.asset('assets/dsp-logo.png'),
        ),
      ),
    );
  }
}
