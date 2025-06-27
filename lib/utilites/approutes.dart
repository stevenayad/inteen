import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:intern/Features/data/Model/userModel.dart';
import 'package:intern/Features/presentation/View/Editprofileview.dart'
    show Editprofileview;
import 'package:intern/Features/presentation/View/OrderScreenView.dart';
import 'package:intern/Features/presentation/View/profilescreenview.dart';

final appRoutes = [
  GetPage(name: '/profile', page: () => Profilescreenview()),
  GetPage(
    name: '/edit',
    page: () {
      final user = Get.arguments as UserModel? ?? UserModel();
      return Editprofileview(user: user);
    },
  ),
  GetPage(name: '/orders', page: () => Orderscreenview()),
];
