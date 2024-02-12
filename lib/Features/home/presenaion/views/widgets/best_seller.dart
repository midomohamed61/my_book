import 'package:flutter/material.dart';
import 'package:my_book/core/utls/assets.dart';
import 'package:my_book/core/utls/styles.dart';
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
                  image:
                  DecorationImage(image: AssetImage(AssetsData.testImage))),
            ),
          ),
          const SizedBox(width: 30,),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*.5,
                child: Text("Harry Potter and the Goblet of fire",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 3,),
              Text('jk Rowling ',
                style: Styles.textStyle14,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*.5,
                child: Text("Harry Potter and the Goblet of fire",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  Text('19.99 \$',
                    style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
