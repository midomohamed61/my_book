import 'package:flutter/material.dart';
import 'package:my_book/core/widget/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: const [
          Expanded(
              child: CustomButton(
                text: '19.99 \$',
                backgroundColor: Colors.white,
                textColor: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)
                ),
              )
          ),
          Expanded(
              child: CustomButton(
                fontSize: 16,
                text: 'Free',
                backgroundColor: Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)
                ),
              )
          ),
        ],
      ),
    );
  }
}
