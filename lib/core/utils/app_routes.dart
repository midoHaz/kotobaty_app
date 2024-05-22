import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:kotobaty_app/features/home/presentation/views/book_details_view.dart';
import 'package:kotobaty_app/features/home/presentation/views/home_view.dart';
import 'package:kotobaty_app/features/search/presentation/views/search_view.dart';
import 'package:kotobaty_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: '/homeView',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: '/bookDetails',
      builder: (BuildContext context, GoRouterState state) {
        return const BookDetailsView();
      },
    ),
    GoRoute(
      path: '/searchView',
      builder: (BuildContext context, GoRouterState state) {
        return const SearchView();
      },
    ),
  ]);
}
