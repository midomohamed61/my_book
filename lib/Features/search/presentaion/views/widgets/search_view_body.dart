import 'package:flutter/material.dart';
import 'package:my_book/Features/search/presentaion/views/widgets/custom_search_text_field.dart';
import 'package:my_book/Features/search/presentaion/views/widgets/search_view_result.dart';
import 'package:my_book/core/utls/styles.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomSearchTextField(),
          const SizedBox(height: 16,),
          Text('Search Result',
          style: Styles.textStyle18,
          ),
          const SizedBox(height: 16,),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
