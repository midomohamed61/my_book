import 'package:flutter/material.dart';
import 'package:my_book/Features/home/data/models/book_model.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/books_action.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/books_details_sections.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:my_book/core/utls/styles.dart';
import 'package:my_book/core/widget/custom_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child:  Column(
              children: [
                 CustomBookDetailsAppBar(),
                 BookDetailsSection(bookModel: bookModel,),
                Expanded(
                  child: SizedBox(height: 50,),
                ),
                 SimilarBooksSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}



