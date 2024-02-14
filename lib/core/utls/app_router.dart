import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_book/Features/home/presentaion/views/home_view.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/book_details_view_body.dart';
import 'package:my_book/Features/search/presentaion/views/search_view.dart';
import 'package:my_book/Features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const KHomeView = '/homeView';
  static const KBookView = '/bookDetailsView';
  static const KSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) =>const HomeView(),
      ),
      GoRoute(
        path: KBookView,
        builder: (context, state) =>const BookDetailsViewBody(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) =>const SearchView(),
      ),

    ],
  );

}