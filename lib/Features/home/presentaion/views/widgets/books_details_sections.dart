import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/books_action.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:my_book/core/utls/styles.dart';
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(),
        ),
        const SizedBox(height: 43,),
        Text('the Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6,),
        Opacity(
          opacity: .7,
          child: Text('author',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        const SizedBox(height: 18,),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37,),
        const BookAction(),
      ],
    );
  }
}
