import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_book/Features/home/data/models/book_model.dart';
import 'package:my_book/Features/home/data/repos/home_repo_imp.dart';
import 'package:my_book/core/utls/api_service.dart';

final getIt = GetIt.instance;
void setupServicesLocator() {
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      ApiServices(
        Dio(),
      ),
    ),
  );
}
