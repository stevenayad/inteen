
import 'package:flutter/material.dart';
import 'package:intern/utilites/appconst.dart';

class IconCircle extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color backgroundColor;
  final Color iconColor;

  const IconCircle({
    super.key,
    required this.icon,
    this.size = 30,
    this.backgroundColor = AppConstants.primaryColor,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: Center(child: Icon(icon, size: size * 0.6, color: iconColor)),
    );
  }
}
