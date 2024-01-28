import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/custom_app_bar.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/custom_list_view_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBAr(),
        FeaturedBooksListView(),
      ],
    );
  }
}
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: FeaturedListViewItem(),
            );
          }),
    );
  }
}


