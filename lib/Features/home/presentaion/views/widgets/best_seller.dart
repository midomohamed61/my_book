import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_book/Features/home/data/models/book_model.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/book_rating.dart';
import 'package:my_book/Features/home/presentaion/views/widgets/custom_book_item.dart';
import 'package:my_book/core/utls/app_router.dart';
import 'package:my_book/core/utls/assets.dart';
import 'package:my_book/core/utls/styles.dart';

class BestListViewItem extends StatelessWidget {
  const BestListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookView);
      },
      child: Container(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    bookModel.volumeInfo.title!,
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: Styles.textStyle14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'free',
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    BookRating(
                      rating: bookModel.volumeInfo.averageRating?.toInt() ?? 0,
                      count: bookModel.volumeInfo.ratingsCount ?? 0,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
