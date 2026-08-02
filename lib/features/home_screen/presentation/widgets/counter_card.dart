import 'package:flutter/material.dart';
import 'package:bmi_app/themes/app_colors.dart';
import 'custom_card.dart';
import 'custom_container_sign.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({
    super.key,
    required this.title,
    required this.value,
    required this.onPlus,
    required this.onMinus,
    required this.unit,
  });
  final String title;
  final int value;
  final VoidCallback onPlus;
  final VoidCallback onMinus;
  final String unit;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: AppColors.whiteColor,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomContainerSign(icon: Icons.remove, onPressed: onMinus),
              Text(
                "$value",
                style: const TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),

              CustomContainerSign(icon: Icons.add, onPressed: onPlus,),
            ],
          ),
          SizedBox(height: 10),
          Text(
            unit,
            style: TextStyle(fontSize: 20, color: AppColors.faidedWight),
          ),
        ],
      ),
    );
  }
}
