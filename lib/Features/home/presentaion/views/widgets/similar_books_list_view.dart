import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_book/Features/home/presentaion/manger/similar_books_cubit/cubit/similar_book_cubit.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:my_book/core/widget/custom_erroe_widget.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .17,
    child: ListView.builder(
        itemCount: state.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(
              imageUrl:
              state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          );
        }),
  );
} else if (state is SimilarBookFailure) {
  return CustomErrorWidget( errMessage: state.message);
} else {
  return const Center(child: CircularProgressIndicator());
}
      },
    );
  }
}
