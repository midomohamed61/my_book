import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_book/Features/home/data/models/book_model.dart';
import 'package:my_book/Features/home/presentaion/manger/similar_books_cubit/cubit/similar_book_cubit.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/book_details_view_body.dart';
class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}
class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBookCubit>(context).fetchSimilarBooks( category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsViewBody(bookModel: widget.bookModel,),
      ),
    );
  }
}