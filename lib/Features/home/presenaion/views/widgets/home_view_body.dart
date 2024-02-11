import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/custom_app_bar.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/featured_books_list_view.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBAr(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text('Best Seller',
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      child: Row(
        children: [
        AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          width: 100,
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: AssetImage(AssetsData.testImage))),
        ),
      ),
        ],
      ),
    );
  }
}


