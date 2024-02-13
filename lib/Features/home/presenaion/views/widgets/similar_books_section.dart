import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/similar_books_list_view.dart';
import 'package:my_book/core/utls/styles.dart';
class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Expanded(child: const SizedBox(height: 50,)),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('You can also like',
            style:Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ) ,
          ),
        ),
        const SizedBox(height: 16,),
        SimilarBooksListView(),
        const SizedBox(height: 40,),
      ],
    );
  }
}
