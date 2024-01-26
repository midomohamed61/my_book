import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_book/Features/splash/presentation/views/splash_view.dart';
import 'package:my_book/constants.dart';

void main() {
  runApp(const MyBook());
}

class MyBook extends StatelessWidget {
  const MyBook({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: KprimaryColor,
      ),
      home:const SplashView(),
    );
  }
}

