import 'package:flutter/material.dart';

class BMIResult {
  final String status;
  final String message;
  final String advice;
  final Color statusColor;
  final Color statusBackgroundColor;
final Color cardColor;
final List<String> risks;
final String title;
  final String description;
  final String risksTitle;
 const BMIResult({
    required this.status,
    required this.message,
    required this.advice,
    required this.statusColor,
    required this.statusBackgroundColor,
    required this.cardColor,
    required this.risks,
    required this.title,
    required this.description,
    required this.risksTitle,
  });
}
