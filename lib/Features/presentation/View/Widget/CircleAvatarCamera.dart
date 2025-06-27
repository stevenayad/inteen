
import 'package:flutter/material.dart';

class CircleAvatarwithCamera extends StatelessWidget {
  const CircleAvatarwithCamera ({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d',
              ),
              radius: 50,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 2),
                ),
                child: Icon(Icons.camera_alt, size: 20, color: Colors.blue),
              ),
            ),
          ],
        );
  }
}
