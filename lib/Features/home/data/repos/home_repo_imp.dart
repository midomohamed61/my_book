import 'package:dartz/dartz.dart';

import 'package:my_book/Features/home/data/models/book_model.dart';

import 'package:my_book/core/errors/failures.dart';

import 'home_repo.dart';

class HomeRepoImp implements HomeRepo{

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

}