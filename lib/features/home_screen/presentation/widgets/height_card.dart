import 'package:bmi_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:bmi_app/core/enums/height_unit.dart';
import 'custom_card.dart';
import 'custom_container_height.dart';
import 'package:bmi_app/core/services/unit_converter.dart';
class HeightCard extends StatelessWidget {
  const HeightCard({super.key, required this.height, required this.onChanged,
    required this.selectedUnit,
    required this.onUnitChanged,

  });
 
  final double height;
  final ValueChanged<double> onChanged;
final ValueChanged<HeightUnit> onUnitChanged;
    final HeightUnit selectedUnit;
  @override
  Widget build(BuildContext context) {
     double displayedHeight;
     switch (selectedUnit) {
      case HeightUnit.cm:
        displayedHeight = height;
        break;

      case HeightUnit.ft:
        displayedHeight = UnitConverter.cmToFt(height);
        break;

      case HeightUnit.inch:
        displayedHeight = UnitConverter.cmToIn(height);
        break;
    }
    return CustomCard(
      height: 300,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Height",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
              ),
             Row(
                children: [
                  CustomContainerHeight(
                    title: "In",
                    isSelected: selectedUnit == HeightUnit.inch,
                    onTap: () {
                      onUnitChanged(HeightUnit.inch);
                    },
                  ),
                  const SizedBox(width: 10),

                  CustomContainerHeight(
                    title: "Ft",
                    isSelected: selectedUnit == HeightUnit.ft,
                    onTap: () {
                      onUnitChanged(HeightUnit.ft);
                    },
                  ),
                  const SizedBox(width: 10),

                  CustomContainerHeight(
                    title: "Cm",
                    isSelected: selectedUnit == HeightUnit.cm,
                    onTap: () {
                      onUnitChanged(HeightUnit.cm);
                    },
                  ),
                ],
              ),
            ],
          ),
         Text(
            displayedHeight.toStringAsFixed(
              selectedUnit == HeightUnit.cm ? 0 : 1,
            ),
            style: const TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
            ),
          ),
          const SizedBox(height: 20),
         
          Slider(
            activeColor: AppColors.chosenCard,
            thumbColor: AppColors.secondryColor,
            inactiveColor: AppColors.primaryColor,
            value: height,
            min: 100,
            max: 220,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
