import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kotobaty_app/core/utils/service_locator.dart';
import 'package:kotobaty_app/features/home/data/models/Book_model.dart';
import 'package:kotobaty_app/features/home/data/repos/home_repo_imp.dart';
import 'package:kotobaty_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
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
        return BlocProvider(create: (context)=>SimilarBooksCubit(getIt.get<HomeRepoImp>()),child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ));
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
