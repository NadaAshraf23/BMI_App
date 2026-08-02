import 'package:flutter/material.dart';
import 'package:bmi_app/themes/app_colors.dart';

class CustomContainerSign extends StatelessWidget {
  const CustomContainerSign({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.secondryColor,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: 35, color: AppColors.primaryColor),
      ),
    );
  }
}
