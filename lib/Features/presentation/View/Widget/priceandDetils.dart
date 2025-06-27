import 'package:flutter/material.dart';
import 'package:intern/utilites/appconst.dart';

class priceandDetils extends StatelessWidget {
  const priceandDetils({super.key, required this.price, required this.qty, required this.totalPrice});

  final double price;
  final int qty;
  final double totalPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("\$${price.toStringAsFixed(2)}"),
        Text("${qty}"),
        Text("\$${totalPrice.toStringAsFixed(2)}", style: AppConstants.heading),
      ],
    );
  }
}