import 'dart:developer';

import 'package:dartz/dartz.dart';

import 'package:my_book/Features/home/data/models/book_model.dart';

import 'package:my_book/core/errors/failures.dart';
import 'package:my_book/core/utls/api_service.dart';

import 'home_repo.dart';

class HomeRepoImp implements HomeRepo {
  late final ApiServices apiServices;
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
    } on Exception catch (e) {
      log(e as String);
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}