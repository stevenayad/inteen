import 'package:flutter/material.dart';

class AppConstants {
  static const primaryColor = Color(0xFFFF8A65);
  static const heading = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const subText = TextStyle(color: Colors.grey);
  static const normalText = TextStyle(fontSize: 18);
  static const fieldLabel = TextStyle(fontWeight: FontWeight.w600);
  static const inputDecoration = InputDecoration(
    filled: true,
    fillColor: Color(0xFFF6F6F6),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );
}
