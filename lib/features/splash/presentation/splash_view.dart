//import 'package:bmi_app/features/home_screen/presentation/home_screen_view.dart';
import 'package:bmi_app/features/splash/presentation/widgets/splash_view_body.dart';
import 'package:bmi_app/themes/app_colors.dart';
import 'package:flutter/material.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:AppColors.primaryColor,
      body: SplashViewBody(),
    );
  }
}