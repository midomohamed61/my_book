import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/best_seller.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/custom_app_bar.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/featured_books_list_view.dart';
import 'package:my_book/constants.dart';
import 'package:my_book/core/utls/assets.dart';
import 'package:my_book/core/utls/styles.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          CustomAppBAr(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle30.copyWith(fontFamily:kGtSectraFine),
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}

