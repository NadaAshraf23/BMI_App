import 'package:bmi_app/features/home_screen/presentation/home_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    fadingAnimation = Tween<double>(
      begin: .2,
      end: 1,
    ).animate(animationController!);
    animationController!.repeat(reverse: true);
    goToNextView();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeTransition(
            opacity: fadingAnimation!,
            child: Center(
              child: Image.asset(
                "images/logo.png",
                width: 115,
                height: 115,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => const HomeScreenView(), transition: Transition.fade);
    });
  }
}