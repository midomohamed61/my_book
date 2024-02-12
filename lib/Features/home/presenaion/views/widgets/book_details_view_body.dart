import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/custom_book_item.dart';
import 'package:my_book/core/utls/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child:  Column(
        children: [
          CustomBookDetailsAppBar(),
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
          )
        ],
      ),
    );
  }
}

