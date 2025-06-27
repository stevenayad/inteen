import 'package:flutter/material.dart';
import 'package:intern/Features/data/Model/userModel.dart';
import 'package:intern/utilites/appconst.dart';

class ContainerwithData extends StatelessWidget {
  const ContainerwithData({super.key, required this.user});
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF4B5A4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Text(user.name, style: AppConstants.heading),
          const SizedBox(height: 12),
          Text(user.id, style: AppConstants.subText),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
