part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

final class SimilarBookInitial extends SimilarBookState {}

class SimilarBookLoading extends SimilarBookState {}

class SimilarBookSuccess extends SimilarBookState {
  final List<BookModel> books;
  const SimilarBookSuccess(this.books);
}

class SimilarBookFailure extends SimilarBookState {
  final String message;
  const SimilarBookFailure(this.message);
}

