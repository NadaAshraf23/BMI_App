import 'package:bmi_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'counter_card.dart';
import 'gender_card.dart';
import 'height_card.dart';
import 'custom_button.dart';
import 'package:bmi_app/core/enums/gender.dart';
import 'package:bmi_app/core/services/bmi_calculator.dart';
import 'package:bmi_app/core/models/bmi_result.dart';
import 'package:bmi_app/features/result_screen/presentation/result_view.dart';
import 'package:bmi_app/core/enums/height_unit.dart';
class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  double heightInCm = 170;
  int weight = 80;
  int age = 20;
  Gender? selectedGender;
  HeightUnit selectedUnit = HeightUnit.cm;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20, top: 25),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GenderCard(
                  icon: Icons.male,
                  title: "MALE",
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardColor: selectedGender == Gender.male
                      ? AppColors.chosenCard
                      : AppColors.cardcolor,
                  borderColor: selectedGender == Gender.male
                      ? AppColors.secondryColor
                      : null,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: GenderCard(
                  icon: Icons.female,
                  title: "FEMALE",
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardColor: selectedGender == Gender.female
                      ? AppColors.chosenCard
                      : AppColors.cardcolor,
                  borderColor: selectedGender == Gender.female
                      ? AppColors.secondryColor
                      : null,
                ),
              ),
            ],
          ),
          //Height card
          const SizedBox(height: 16),
HeightCard(
            height: heightInCm,
            selectedUnit: selectedUnit,
            onChanged: (value) {
              setState(() {
                heightInCm = value;
              });
            },
            onUnitChanged: (unit) {
              setState(() {
                selectedUnit = unit;
              });
            },
          ),
          SizedBox(height: 15),
          //Age & weight card
          Row(
            children: [
              Expanded(
                child: CounterCard(
                  title: "Weight",
                  value: weight,
                  unit: "kg",
                  onPlus: () {
                    setState(() {
                      weight++;
                    });
                  },

                  onMinus: () {
                    setState(() {
                      if (weight > 1) {
                        weight--;
                      }
                    });
                  },
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: CounterCard(
                  title: "Age",
                  value: age,
                  unit: "Year",
                  onPlus: () {
                    setState(() {
                      age++;
                    });
                  },
                  onMinus: () {
                    setState(() {
                      if (age > 1) {
                        age--;
                      }
                    });
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
//زرار calculate
          CustomButton(
            title: "Calculate",
            onPressed: () {
              double bmi = BMICalculator.calculateBMI(
                height: heightInCm,
                weight: weight,
              );
              BMIResult result = BMICalculator.getResult(bmi);

                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ResultView(bmi: bmi, result: result),
                ),
              );
            },
            icon: Icons.calculate_sharp,
          ),
        ],
      ),
    );
  }
}
