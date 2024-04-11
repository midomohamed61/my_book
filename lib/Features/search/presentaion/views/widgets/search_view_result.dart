import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/best_seller.dart';
class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context,index){
        return const Padding(
            padding:  EdgeInsets.symmetric(vertical: 10),
            // child:  BestListViewItem()
            child: Text('data'),
        );
      },
    );
  }
}
