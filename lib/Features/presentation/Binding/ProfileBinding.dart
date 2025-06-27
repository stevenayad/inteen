import 'package:get/get.dart';
import 'package:intern/Features/presentation/Controller/profileController.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
  }
}
