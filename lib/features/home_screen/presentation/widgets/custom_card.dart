import 'package:flutter/material.dart';
import 'package:bmi_app/themes/app_colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.borderColor,
    this.cardColor = AppColors.cardcolor,
  });
  final double? width;
  final double? height;
  final Widget child;
  final Color? borderColor;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 5)
            : null,
      ),
      child: child,
    );
  }
}
