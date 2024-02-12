import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_book/Features/home/presenaion/views/home_view.dart';
import 'package:my_book/Features/splash/presentation/views/widget/sliding_text.dart';
import 'package:my_book/constants.dart';
import 'package:my_book/core/utls/assets.dart';

class splshViewBody extends StatefulWidget {
  const splshViewBody({super.key});

  @override
  State<splshViewBody> createState() => _splshViewBodyState();
}

class _splshViewBodyState extends State<splshViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    slidingAnimation = Tween<Offset>(begin: Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
    //   Get.to(() => const HomeView(),
    //       transition: Transition.fade, duration: KTranstionDuration);
      GoRouter.of(context).push('/homeView');
    });
  }
}
