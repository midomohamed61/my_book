import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/best_seller.dart';
class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context,index){
          return const Padding(
              padding:  EdgeInsets.symmetric(vertical: 10),
              child:  BestListViewItem()
          );
        },
      ),
    );
  }
}
