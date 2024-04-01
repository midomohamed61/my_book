import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/custom_book_item.dart';
class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder:(context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(imageUrl: "https://media.wired.com/photos/653186cfbdad3b3518d19dac/16:9/w_2400,h_1350,c_limit/8-Tips-to-Get-Started-with-Marvel's-Spider-Man-2-Culture.jpg",),
            );
          }),
    );
  }
}
