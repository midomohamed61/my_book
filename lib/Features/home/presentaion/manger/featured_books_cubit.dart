import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_book/Features/home/data/models/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
