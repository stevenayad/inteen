import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intern/Features/presentation/View/Widget/personsectionitem.dart';
import 'package:intern/utilites/appconst.dart';

class Personsection extends StatelessWidget {
  const Personsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF4B5A4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PersonSectionItem(icon: Icons.person, label: "Person"),
            Container(height: 50, width: 1, color: Colors.black),
            PersonSectionItem(icon: Icons.favorite_border, label: "Wishlist"),
            Container(height: 50, width: 1, color: Colors.black),
            PersonSectionItem(
              icon: Icons.shopping_bag_outlined,
              label: "My Orders",
              ontap: () {
                Get.toNamed('/orders');
              },
            ),
          ],
        ),
      ),
    );
  }
}
