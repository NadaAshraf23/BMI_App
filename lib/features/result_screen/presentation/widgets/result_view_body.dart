import 'package:flutter/material.dart';
import 'result_card.dart';
import 'package:bmi_app/features/home_screen/presentation/widgets/custom_button.dart';
import 'result_descreption.dart';
import 'package:bmi_app/core/models/bmi_result.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key, required this.bmi, required this.result});

  final double bmi;
  final BMIResult result;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 30, left: 30, top: 25),
      child:
        Column(
          children: [
            SizedBox(height: 20),
            ResultCard(
              bmi: bmi,
              status: result.status,
              message: result.message,
              advice: result.advice,
              statusColor: result.statusColor,
              statusBackgroundColor: result.statusBackgroundColor,
              cardColor: result.cardColor,
            ),
         ResultDescription(
              title: result.title,
              description: result.description,
              risksTitle: result.risksTitle,
              risks: result.risks,
            ),
            SizedBox(height: 40),
            CustomButton(
              title: "Re-Calculate",
              onPressed: () {

                Navigator.pop(context);
              },
              icon: Icons.refresh_sharp,
            ),
          ],
        ),

    );
  }
}
