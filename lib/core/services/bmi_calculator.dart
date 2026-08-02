import 'package:bmi_app/core/models/bmi_result.dart';
import 'package:bmi_app/themes/app_colors.dart';
class BMICalculator {
  static double calculateBMI({required double height, required int weight}) {
    return weight / ((height / 100) * (height / 100));
  }

//*****************
static BMIResult getResult(double bmi) {
    if (bmi < 18.5) {
      return BMIResult(
        status: "Underweight",
        message: "Your BMI result indicates that you are underweight.",
        advice: "Try eating a balanced diet to gain healthy weight.",
        risks: [
          "Weak immune system",
          "Nutritional deficiencies",
          "Fatigue and low energy",
          "Bone weakness",
        ],
        title: "What is Underweight?",
        description:
            "Being underweight means your body weight is lower than the healthy range for your height. It may be caused by poor nutrition or other health conditions.",

        risksTitle: "⚠ Health Risks of Being Underweight:",
        statusColor: AppColors.blueColor,
        statusBackgroundColor: AppColors.lightBlueColor,
        cardColor: AppColors.darkBluenCard,
      );
    } else if (bmi < 25) {
      return BMIResult(
        status: "Perfect",
        message: "Your BMI is within the normal range.",
        advice: "Maintain your healthy lifestyle and keep exercising.",
        risks: [
          "Keep exercising regularly",
          "Maintain a balanced diet",
          "Drink enough water",
          "Get enough sleep",
        ],
        title: "What is a Healthy Weight?",
        description:
            "A healthy weight means your BMI is within the normal range. Maintaining healthy habits helps reduce the risk of many diseases.",

        risksTitle: "✅ Healthy Lifestyle Tips:",
        statusColor: AppColors.greenColor,
        statusBackgroundColor: AppColors.lightGreenColor,
       cardColor: AppColors.darkGreenColor,
      );
    } else {
      return BMIResult(
        status: "Overweight",
        message: "Your BMI result indicates that you are overweight.",
        advice: "Exercise regularly and follow a healthy diet.",
        risks: [
          "Keep exercising regularly",
          "Maintain a balanced diet",
          "Drink enough water",
          "Get enough sleep",
        ],
        title: "What is Overweight?",
        description:
            "Being overweight means having more body fat than is considered healthy for your height. It's often measured using the Body Mass Index (BMI). A BMI between 25 and 29.9 is considered overweight.",

        risksTitle: "⚠ Health Risks of Being Overweight:",
        statusColor: AppColors.redColor,
        statusBackgroundColor: AppColors.lightRedColor,
        cardColor: AppColors.darkRedColor,
      );
    }
  }
}
