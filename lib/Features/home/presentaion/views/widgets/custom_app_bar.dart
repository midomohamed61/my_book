import 'package:flutter/material.dart';
import 'package:my_book/core/utls/assets.dart';
class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 24,right: 24,top: 40,bottom: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,
            height: 16,
          ),
          Spacer(),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search,
                size:24 ,
              )
          ),
        ],
      ),
    );
  }
}
