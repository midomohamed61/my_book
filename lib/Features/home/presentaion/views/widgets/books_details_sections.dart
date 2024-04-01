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
          child: CustomBookImage(imageUrl: "https://media.wired.com/photos/653186cfbdad3b3518d19dac/16:9/w_2400,h_1350,c_limit/8-Tips-to-Get-Started-with-Marvel's-Spider-Man-2-Culture.jpg",),
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
