import 'package:flutter/material.dart';
import 'package:my_book/Features/home/presenaion/views/widgets/home_view_body.dart';
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:HomeViewBody() ,
    );
  }
}
