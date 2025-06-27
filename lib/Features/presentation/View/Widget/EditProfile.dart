import 'package:flutter/material.dart';
import 'package:intern/Features/data/Model/userModel.dart';
import 'package:intern/Features/presentation/View/Widget/CircleAvatarCamera.dart';
import 'package:intern/Features/presentation/View/Widget/Containerwithdata.dart';
import 'package:intern/Features/presentation/View/Widget/EditProfileForm.dart';


class EditProfile extends StatelessWidget {
  const EditProfile({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CircleAvatarwithCamera(),
          const SizedBox(height: 10),
          ContainerwithData(user: user),
          EditProfileForm(user: user),
        ],
      ),
    );
  }
}
