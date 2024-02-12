import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/book_detaol_view_body.dart';
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
