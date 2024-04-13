import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:my_book/Features/home/data/models/book_model.dart';
import 'package:my_book/Features/home/data/repos/home_repo.dart';


part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());

final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async{
    emit(SimilarBookLoading());
    var result = await homeRepo.fetchSimilardBooks(category: category);
    result.fold((failure) {
      emit(SimilarBookFailure(failure.message));
    },(books) {
      emit(SimilarBookSuccess(books));
    });
  }
}
