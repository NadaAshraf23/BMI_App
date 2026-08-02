import 'package:bmi_app/themes/app_colors.dart';
import 'package:flutter/material.dart';


class CustomContainerHeight extends StatelessWidget {
  const CustomContainerHeight({
    super.key,
    required this.onTap,
    required this.title,
    required this.isSelected,
  });
 
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: isSelected ? AppColors.chosenCard : AppColors.gray,
          border: isSelected
              ? Border.all(color: AppColors.secondryColor, width: 2)
              : null,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: isSelected
                  ? AppColors.secondryColor
                  : AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
