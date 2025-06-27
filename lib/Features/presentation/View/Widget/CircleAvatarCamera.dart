import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern/Features/presentation/Controller/profileController.dart';

class CircleAvatarwithCamera extends StatelessWidget {
  const CircleAvatarwithCamera({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();

    return GestureDetector(
      onTap: () => controller.pickImage(),
      child: Obx(
        () => Stack(
          children: [
            CircleAvatar(
              backgroundImage:
                  controller.user.value.imageUrl != null
                      ? NetworkImage(controller.user.value.imageUrl!)
                      : const NetworkImage(
                            'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d',
                          )
                          as ImageProvider,
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
        ),
      ),
    );
  }
}
