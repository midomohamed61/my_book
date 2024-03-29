import 'package:flutter/material.dart';
import 'package:my_book/Features/splash/presentation/views/widget/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: splshViewBody(),
    );
  }
}
