import 'package:flutter/material.dart';

import '../models/input_model.dart';

class InputsWidget extends StatelessWidget {
  final List<InputData> inputData;

  InputsWidget({required this.inputData});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: inputData.map((data) {
          return Column(
            children: [
              buildRoundedInput(
                icon: data.icon,
                hintText: data.hintText,
                additionalText: data.additionalText,
              ),
              SizedBox(height: 16),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget buildRoundedInput({
    required IconData icon,
    required String hintText,
    String? additionalText,
  }) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                ),
              ),
            ),
            if (additionalText != null) Text(additionalText),
          ],
        ),
      ),
    );
  }
}

