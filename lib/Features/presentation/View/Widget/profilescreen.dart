import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern/Features/presentation/Controller/profileController.dart';
import 'package:intern/Features/presentation/View/Widget/featureapp.dart';
import 'package:intern/Features/presentation/View/Widget/personsection.dart';
import 'package:intern/utilites/appconst.dart';

class Profilescreen extends StatefulWidget {
  Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ProfileController>();
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      }
      return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(controller.user.value.imageUrl),
                radius: 50,
              ),
              const SizedBox(height: 10),
              Text(controller.user.value.name, style: AppConstants.heading),
              Text(controller.user.value.id, style: AppConstants.subText),
              const SizedBox(height: 20),
              Personsection(),
              const SizedBox(height: 20),
              Featureapp(),
            ],
          ),
        ),
      );
    });
  }
}
