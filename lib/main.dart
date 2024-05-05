import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kotobaty_app/constants.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const KotobatyApp());
}

class KotobatyApp extends StatelessWidget {
  const KotobatyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: const SplashView(),
    );
  }
}

