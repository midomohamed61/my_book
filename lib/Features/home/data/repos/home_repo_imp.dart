import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:my_book/Features/home/data/models/book_model.dart';

import 'package:my_book/core/errors/failures.dart';
import 'package:my_book/core/utls/api_service.dart';

import 'home_repo.dart';

class HomeRepoImp implements HomeRepo {
  late final ApiServices apiServices;

  HomeRepoImp(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiServices.get(
          endPoints:
              'volumes?Filtering=free-ebooks&Sorting=newst&q=subject:Programming');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure.fromDioError(e.toString() as DioError));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoints:
          'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure.fromDioError(e.toString() as DioError));
    }
  }
}
