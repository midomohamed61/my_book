import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_book/core/utls/styles.dart';
class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 6.3,),
        Text('4.16',
          style:Styles.textStyle16,
        ),
        SizedBox(width: 5,),
        Text('(245)',
          style:Styles.textStyle14 ,
        )
      ],
    );
  }
}
