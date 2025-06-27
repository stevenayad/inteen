import 'package:flutter/material.dart';
import 'package:intern/utilites/appconst.dart';

class TopRow extends StatelessWidget {
  const TopRow({super.key, required this.state, required this.Date});
  final String state;
  final String Date;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Order $state", style: AppConstants.normalText),
        Text(Date, style: AppConstants.subText),
      ],
    );
  }
}