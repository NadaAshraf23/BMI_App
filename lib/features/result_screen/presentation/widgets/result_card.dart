import 'package:flutter/material.dart';

import 'package:bmi_app/features/home_screen/presentation/widgets/custom_card.dart';
import 'package:bmi_app/themes/app_colors.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key
  ,required this.bmi,required this.status,required this.message,required this.advice
 ,required this.statusColor,required this.statusBackgroundColor,
    required this.cardColor, });
  final double bmi;
  final String status;
  final String message;
  final String advice;
  final Color statusColor;
  final Color statusBackgroundColor;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 400,
      
       cardColor: cardColor,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                "Your BMI is",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: .bold,
                  color: AppColors.faidedWight,
                ),
              ),
              Container(
                width: 130,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color:statusBackgroundColor,
                ),
                child: Center(
                  child: Text(
                    status,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: .bold,
                      color:statusColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        Center(child:   Text(
           bmi.toStringAsFixed(1),
            style: TextStyle(
              fontSize: 90,
              fontWeight: .bold,
              color: AppColors.faidedWight,
            ),
          ),),
          Text(
           message,
            style: TextStyle(
              fontSize: 20,
              fontWeight: .bold,
              color: AppColors.faidedWight,
            ),
          ),
         SizedBox(height: 20,),
          Text(
           advice,
            style: TextStyle(
              fontSize: 20,
              fontWeight: .bold,
              color: AppColors.faidedWight,
            ),
          ),
        ],
      ),
    );
  }
}
