import 'package:flutter/material.dart';

class InputData {
  final IconData icon;
  final String hintText;
  final String? additionalText;

  InputData({
    required this.icon,
    required this.hintText,
    this.additionalText,
  });
}