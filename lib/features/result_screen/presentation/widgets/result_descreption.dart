import 'package:flutter/material.dart';
import 'package:bmi_app/themes/app_colors.dart';

class ResultDescription extends StatelessWidget {
  const ResultDescription({
    super.key,
    required this.title,
    required this.description,
    required this.risksTitle,
    required this.risks,
  });

  final String title;
  final String description;
  final String risksTitle;
  final List<String> risks;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),

        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.whiteColor,
          ),
        ),

        const SizedBox(height: 12),

        Text(
          description,
          style: const TextStyle(
            fontSize: 20,
            color: AppColors.faidedWight,
            height: 1.5,
          ),
        ),

        const SizedBox(height: 24),

        Text(
          risksTitle,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColors.whiteColor,
          ),
        ),

        const SizedBox(height: 12),

        Column(children: risks.map((risk) => BulletItem(text: risk)).toList()),
      ],
    );
  }
}

class BulletItem extends StatelessWidget {
  const BulletItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "•",
            style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 25,
                color: AppColors.faidedWight,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
