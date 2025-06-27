import 'package:flutter/material.dart';
import 'package:intern/Features/data/Model/userModel.dart';
import 'package:intern/Features/presentation/View/Widget/CustomProfileAppBar.dart';
import 'package:intern/Features/presentation/View/Widget/EditProfile.dart';

class Editprofileview extends StatelessWidget {
  const Editprofileview({super.key, required this.user});
  final UserModel user;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditProfile(user: user,),
      appBar: CustomProfileAppBar(isupdate: false, title: 'My Profile'),
    );
  }
}
