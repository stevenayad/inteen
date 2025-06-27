import 'package:flutter/material.dart';
import 'package:intern/Features/data/Model/userModel.dart';
import 'package:intern/Features/presentation/View/Widget/CustomProfileAppBar.dart';
import 'package:intern/Features/presentation/View/Widget/OrderScreen.dart';

class Orderscreenview extends StatelessWidget {
  const Orderscreenview({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Orderscreen(),
      appBar: CustomProfileAppBar(isupdate: false, title: 'MY Orders'  ,) ,
    );
  }
}
