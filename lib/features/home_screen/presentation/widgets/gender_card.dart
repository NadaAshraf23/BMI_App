import 'package:bmi_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

import 'custom_card.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.icon,
    required this.title,
    this.borderColor,
    this.cardColor = AppColors.cardcolor,
     required this.onTap,
  });

  final IconData icon;
  final String title;
  final Color? borderColor;
  final Color cardColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:
        CustomCard(
          borderColor: borderColor,
          cardColor: cardColor,
          height: 280,
          child: Column(
            mainAxisAlignment: .spaceEvenly,
            children: [
              Icon(icon, size: 120, color: AppColors.secondryColor),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: .bold,
                  color: AppColors.secondryColor,
                ),
              ),
            ],
          ),
        ),
    
    );
  }
}
