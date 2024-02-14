import 'package:flutter/material.dart';
import 'package:my_book/Features/search/presentaion/views/widgets/search_view_body.dart';
class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}
