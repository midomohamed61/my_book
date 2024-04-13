import 'package:dartz/dartz.dart';
import 'package:flutter/src/foundation/annotations.dart';
import 'package:my_book/Features/home/data/models/book_model.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookModel>>> fetchSimilardBooks({required String category});
}