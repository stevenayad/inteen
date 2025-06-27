import 'dart:io' as io;
import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intern/Features/data/Model/userModel.dart';
import 'package:intern/utilites/FirebaseService.dart';

class ProfileController extends GetxController {
  final user = UserModel().obs;

  final isLoading = true.obs;
  final isUploadingImage = false.obs;

  @override
  void onInit() {
    loadUserData(); 
    super.onInit(); 
  }

  Future<void> loadUserData() async {
    try {
      isLoading(true);
      final userData = await FirebaseService.getUserData();
      user.value = userData ?? UserModel(name: 'Guest User');
    } catch (e) {
      user.value = UserModel(name: 'Error Loading Profile');
      Get.snackbar('Error', 'Failed to load user data');
    } finally {
      isLoading(false);
    }
  }

  void updateUser(UserModel updatedUser) async {
    try {
      isLoading(true);
      user.value = updatedUser;
      await FirebaseService.updateUser(updatedUser);
      Get.back();
      Get.snackbar('Success', 'Profile updated successfully');
    } catch (e) {
      Get.snackbar('Error', 'Failed to update profile');
    } finally {
      isLoading(false);
    }
  }

  Future<String?> uploadProfileImage({
    io.File? file,
    Uint8List? webImageBytes,
    required String filename,
  }) async {
    try {
      isUploadingImage(true);
      final filename = 'profile_${user.value.id ?? 'user'}_${DateTime.now().millisecondsSinceEpoch}.jpg';
      
      final imageUrl = await FirebaseService.uploadProfileImage(
        file: file,
        webImageBytes: webImageBytes,
        filename: filename,
      );
      
      if (imageUrl != null) {
        final updatedUser = user.value.copyWith(imageUrl: imageUrl);
         updateUser(updatedUser);
        return imageUrl;
      }
      return null;
    } catch (e) {
      Get.snackbar('Error', 'Failed to upload image: ${e.toString()}');
      return null;
    } finally {
      isUploadingImage(false);
    }
  }
}
