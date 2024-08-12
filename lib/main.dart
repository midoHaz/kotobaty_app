import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotobaty_app/constants.dart';
import 'package:kotobaty_app/core/utils/app_routes.dart';
import 'package:kotobaty_app/features/home/data/repos/home_repo_imp.dart';
import 'package:kotobaty_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:kotobaty_app/features/home/presentation/manager/neawest_books_cubit/newest_books_cubit.dart';

import 'core/utils/service_locator.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  setupServiceLocator();
  runApp(const KotobatyApp());
}

class KotobatyApp extends StatelessWidget {
  const KotobatyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>FeaturedBooksCubit(getIt.get<HomeRepoImp>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImp>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
            GoogleFonts.montserratTextTheme(ThemeData
                .dark()
                .textTheme)),
      ),
    );
  }
}

