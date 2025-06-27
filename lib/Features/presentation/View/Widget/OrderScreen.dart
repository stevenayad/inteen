import 'package:flutter/material.dart';
import 'package:intern/Features/data/Model/itemModel.dart';

import 'package:intern/Features/presentation/View/Widget/Orderitem.dart';


class Orderscreen extends StatelessWidget {
  const Orderscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return OrderItem(
         orderitem: orders[index],
        );
      },
    );
  }
}
