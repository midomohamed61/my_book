import 'package:flutter/material.dart';
import 'package:my_book/core/utls/assets.dart';
class splshViewBody extends StatefulWidget {
  const splshViewBody({super.key});

  @override
  State<splshViewBody> createState() => _splshViewBodyState();
}

class _splshViewBodyState extends State<splshViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo)
      ],
    );
  }
}
