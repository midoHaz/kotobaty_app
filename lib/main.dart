import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotobaty_app/constants.dart';
import 'package:kotobaty_app/core/utils/app_routes.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const KotobatyApp());
}

class KotobatyApp extends StatelessWidget {
  const KotobatyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    );
  }
}

