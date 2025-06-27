import 'package:flutter/material.dart';
import 'package:intern/utilites/appconst.dart';

class PersonSectionItem extends StatelessWidget {
  const PersonSectionItem({super.key, required this.icon, required this.label,  this.ontap });

  final IconData icon;
  final String label;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap ,
      child: Column(
        children: [
          Icon(icon, color: Colors.black),
          const SizedBox(height: 5),
          Text(label, style: AppConstants.subText),
        ],
      ),
    );
  }
}
