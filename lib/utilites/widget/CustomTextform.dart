import 'package:flutter/material.dart';
import 'package:intern/utilites/appconst.dart';

Widget CustomTextField(
  String label,
  TextEditingController controller, {
  String? Function(String?)? validator,
  TextInputType? keyboardType,
  int? maxLines = 1,
  bool readOnly = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: AppConstants.fieldLabel),
      const SizedBox(height: 6),
      TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
        maxLines: maxLines,
        readOnly:readOnly ,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Enter $label',
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Color(0xFFF6F6F6),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AppConstants.primaryColor,
              width: 1.5,
            ),
          ),
        ),
      ),
      const SizedBox(height: 12),
    ],
  );
}
