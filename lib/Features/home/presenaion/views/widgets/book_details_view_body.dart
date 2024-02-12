import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: const Column(
        children: [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}

