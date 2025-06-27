import 'package:flutter/material.dart';
import 'package:intern/Features/data/Model/userModel.dart';
import 'package:intern/Features/presentation/View/Widget/CustomProfileAppBar.dart';
import 'package:intern/Features/presentation/View/Widget/profilescreen.dart';

class Profilescreenview extends StatelessWidget {
  const Profilescreenview({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Profilescreen(),
      appBar: CustomProfileAppBar(isupdate: true, title: 'My Profile', ),
    );
  }
}
