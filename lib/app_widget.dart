import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/splash/splash_page.dart';
import 'modules/barcode_scanner/barcode_scanner_page.dart';
import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

// ignore: use_key_in_widget_constructors
class AppWidget extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.background));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(
          primarySwatch: Colors.orange, primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/home": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
        "/barcode_scanner": (context) => const BarcodeScannerPage(),
      },
    );
  }
}
