import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/book_details_view_body.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: BookDetailsViewBody(),
      ),
    );
  }
}
