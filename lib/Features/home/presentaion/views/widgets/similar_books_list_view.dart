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
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(
              imageUrl:
                  "https://media.wired.com/photos/653186cfbdad3b3518d19dac/16:9/w_2400,h_1350,c_limit/8-Tips-to-Get-Started-with-Marvel's-Spider-Man-2-Culture.jpg",
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
