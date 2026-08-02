import 'package:flutter/material.dart';
import 'package:bmi_app/themes/app_colors.dart';
import 'widgets/result_view_body.dart';
import 'package:bmi_app/core/models/bmi_result.dart';
class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.bmi, required this.result});

  final double bmi;
  final BMIResult result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: AppColors.whiteColor,
          iconSize: 30,
        ),
        title: Text("Results"),
        titleTextStyle: TextStyle(fontSize: 40, fontWeight: .bold),
      ),
      body: ResultViewBody(
        bmi: bmi,result: result,
      ),
    );
  }
}
