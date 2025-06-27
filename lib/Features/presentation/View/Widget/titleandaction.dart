import 'package:flutter/material.dart';
import 'package:intern/Features/presentation/View/Widget/IconCricle.dart';
import 'package:intern/utilites/appconst.dart';

class Titleandaction extends StatelessWidget {
  const Titleandaction({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(name, style: AppConstants.heading)),
        IconCircle(icon: Icons.remove),
        const SizedBox(width: 6),
        IconCircle(icon: Icons.add),
      ],
    );
  }
}
