import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_book/Features/home/presentaion/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:my_book/core/widget/custom_erroe_widget.dart';
import 'package:my_book/core/widget/custom_loading_indicatopr.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
  builder: (context, state) {
    if(state is FeaturedBooksSuccess){
      return SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount:  state.books.length,
            itemBuilder:(context,index){
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail, ),
              );
            }),
      );
    } else if(state is FeaturedBooksFailure){
      return CustomErrorWidget(errMessage: state.errMessage,);
    }else {
      return CustomLoadingIndicator();
    }
  },
);
  }
}
