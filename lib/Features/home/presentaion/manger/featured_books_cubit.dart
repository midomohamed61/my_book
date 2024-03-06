import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_book/Features/home/data/models/book_model.dart';
import 'package:my_book/Features/home/data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks()async{
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();

      result.fold((failure) {
        emit(FeaturedBooksFailure(failure.message));
      }, (books) {
        emit(FeaturedBooksSuccess(books));
      }
      );
  }
}
