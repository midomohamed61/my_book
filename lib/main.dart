import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_book/Features/home/data/repos/home_repo_imp.dart';
import 'package:my_book/Features/home/presentaion/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:my_book/Features/home/presentaion/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:my_book/constants.dart';
import 'package:my_book/core/utls/api_service.dart';
import 'package:my_book/core/utls/app_router.dart';

import 'core/utls/service_locator.dart';

void main() {
  setupServicesLocator();
  runApp(const MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImp>()
          ),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
              getIt.get<HomeRepoImp>()
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: KprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
