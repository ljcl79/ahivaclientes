import 'package:ahiva/app/modules/splash/splash_binding.dart';

import 'package:ahiva/app/modules/splash/splash_page.dart';
import 'package:ahiva/app/routes/app_pages.dart';
import 'package:ahiva/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AHIVA Clientes',
      debugShowCheckedModeBanner: false,
      theme: AhivaTheme,
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es'), // Spanish
      ],
    );
  }
}
