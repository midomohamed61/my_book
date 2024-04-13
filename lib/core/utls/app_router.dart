import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_book/Features/home/data/models/book_model.dart';
import 'package:my_book/Features/home/data/repos/home_repo_imp.dart';
import 'package:my_book/Features/home/presentaion/manger/similar_books_cubit/cubit/similar_book_cubit.dart';
import 'package:my_book/Features/home/presentaion/views/book_details_view.dart';
import 'package:my_book/Features/home/presentaion/views/home_view.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/book_details_view_body.dart';
import 'package:my_book/Features/search/presentaion/views/search_view.dart';
import 'package:my_book/Features/splash/presentation/views/splash_view.dart';
import 'package:my_book/core/utls/service_locator.dart';

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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBookCubit(getIt.get<HomeRepoImp>()),
          child:  BookDetailsView(bookModel: state.extra as BookModel,),
        ),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) =>const SearchView(),
      ),

    ],
  );

}