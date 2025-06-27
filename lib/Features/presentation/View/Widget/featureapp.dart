import 'package:flutter/material.dart';
import 'package:intern/Features/presentation/View/Widget/Featureapplistitem.dart';

class Featureapp extends StatelessWidget {
  const Featureapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Featureapplistitem(
          icon: Icons.privacy_tip_outlined,
          string: 'Privacy Policy',
        ),
        SizedBox(height: 12),
        Featureapplistitem(icon: Icons.payment, string: 'Payment Methods'),
        SizedBox(height: 12),
        Featureapplistitem(
          icon: Icons.notifications_none,
          string: 'Notifications',
        ),
        SizedBox(height: 12),
        Featureapplistitem(icon: Icons.settings, string: 'Settings'),
        SizedBox(height: 12),
        Featureapplistitem(icon: Icons.help_outline, string: 'Help'),
        SizedBox(height: 12),
        Featureapplistitem(icon: Icons.logout, string: 'Logout'),
        SizedBox(height: 12),
      ],
    );
  }
}
