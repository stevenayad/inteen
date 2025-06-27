import 'package:flutter/material.dart';
import 'package:intern/Features/presentation/View/Widget/buildRadioOption.dart';

class RadioSection extends StatelessWidget {
  const RadioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xffF4B5A4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RadioOption(value: "Male", groupValue: "Male"),
          RadioOption(value: "Female", groupValue: "Male"),
        ],
      ),
    );
  }
}
