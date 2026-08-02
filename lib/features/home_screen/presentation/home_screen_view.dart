import 'package:bmi_app/features/home_screen/presentation/widgets/home_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/themes/app_colors.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leadingWidth: 70,

        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset("images/logo.png"),
        ),
        backgroundColor: AppColors.primaryColor,
        title: Text("BMI Calculator"),
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: .bold),
      ),
      body: HomeScreenBody(),
    );
  }
}
