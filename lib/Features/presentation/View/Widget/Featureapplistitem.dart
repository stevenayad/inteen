import 'package:flutter/material.dart';
import 'package:intern/Features/presentation/View/Widget/IconCricle.dart';
import 'package:intern/utilites/appconst.dart' show AppConstants;

class Featureapplistitem extends StatelessWidget {
  const Featureapplistitem({super.key, required this.icon, required this.string});

  final IconData icon;
  final String string;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconCircle(icon: Icons.settings),
        SizedBox(width: 10),
        Text(string, style: AppConstants.normalText),
      ],
    );
  }
}
