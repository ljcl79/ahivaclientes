import 'package:ahiva/app/modules/home/home_binding.dart';
import 'package:ahiva/app/modules/home/home_page.dart';
import 'package:ahiva/app/modules/login/login_binding.dart';
import 'package:ahiva/app/modules/login/login_page.dart';
import 'package:ahiva/app/modules/splash/splash_binding.dart';
import 'package:ahiva/app/modules/splash/splash_page.dart';
import 'package:ahiva/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.SPLASH,
        page: () => SplashPage(),
        binding: SplashBinding()),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
