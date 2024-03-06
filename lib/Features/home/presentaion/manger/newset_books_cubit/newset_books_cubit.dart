import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_book/Features/home/data/models/book_model.dart';
import 'package:my_book/Features/home/data/repos/home_repo.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewstBooks()async{
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();

    result.fold((failure) {
      emit(NewsetBooksFailure(failure.message));
    }, (books) {
      emit(NewsetBooksSuccess(books));
    }
    );
  }
}
