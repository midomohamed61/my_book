import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_book/Features/home/presentaion/manger/newset_books_cubit/newset_books_cubit.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/best_seller.dart';
import 'package:my_book/core/widget/custom_erroe_widget.dart';
import 'package:my_book/core/widget/custom_loading_indicatopr.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                  padding:const EdgeInsets.symmetric(vertical: 10),
                  child: BestListViewItem(bookModel: state.books[index],
                  )
                  );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
