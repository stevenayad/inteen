import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern/Features/presentation/Controller/profileController.dart';

class CustomProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final Color iconColor;
  final bool isupdate;

  const CustomProfileAppBar({
    super.key,
    required this.title,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    required this.isupdate,
  });

  @override
  Widget build(BuildContext context) {
    final ProfileController profileController = Get.find<ProfileController>();

    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new, color: iconColor),
        iconSize: 20,
        onPressed: Get.back,
      ),
      title: Text(title, style: TextStyle(color: iconColor)),
      centerTitle: true,
      actions: [
        if (isupdate)
          IconButton(
            icon: Icon(Icons.edit_outlined, color: iconColor),
            onPressed: () {
               Get.toNamed('/edit', arguments: profileController.user.value);
            },
          ),
      ],
      backgroundColor: backgroundColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
