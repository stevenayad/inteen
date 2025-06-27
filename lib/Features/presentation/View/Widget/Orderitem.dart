import 'package:flutter/material.dart';
import 'package:intern/Features/data/Model/itemModel.dart';

import 'package:intern/Features/presentation/View/Widget/TopRowinOrderitem.dart';
import 'package:intern/Features/presentation/View/Widget/priceandDetils.dart';
import 'package:intern/Features/presentation/View/Widget/titleandaction.dart';
import 'package:intern/utilites/appconst.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.orderitem});

  final Orderitem orderitem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  orderitem.image,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              // Info Section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top Row
                    TopRow(state: orderitem.status, Date: orderitem.date),
                    const SizedBox(height: 6),

                    // Title and actions
                    Titleandaction(name: orderitem.name),
                    const SizedBox(height: 4),

                    // Description
                    Text(
                      orderitem.description,
                      style: AppConstants.subText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 8),

                    // Price Details
                    priceandDetils(
                      price: orderitem.price,
                      qty: orderitem.qty,
                      totalPrice: orderitem.totalPrice,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(thickness: 1, color: Color(0xFFE0E0E0)), // 👈 Divider
        ],
      ),
    );
  }
}
