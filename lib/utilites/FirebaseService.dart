import 'dart:typed_data';
import 'dart:io' as io show File;
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:intern/Features/data/Model/userModel.dart';

class FirebaseService {
  static final _db = FirebaseFirestore.instance;

  static Future<UserModel> getUserData() async {
    try {
      final doc = await _db.collection('user').doc('user1').get();
      if (!doc.exists) {
        throw Exception('User document not found');
      }
      return UserModel.fromMap(doc.data()!);
    } catch (e) {
      debugPrint('Error fetching user data: $e');
      return UserModel(name: 'Guest User');
    }
  }

  static Future<void> updateUser(UserModel user) async {
    try {
      await _db.collection('user').doc('user1').set(user.toMap());
    } catch (e) {
      debugPrint('Error updating user: $e');
      rethrow;
    }
  }

  //this function not work Because not free (Paid Services)
  static Future<String> uploadProfileImage({
    io.File? file,
    Uint8List? webImageBytes,
    required String filename,
  }) async {
    try {
      final ref = FirebaseStorage.instance.ref('profiles/$filename');

      UploadTask uploadTask;

      if (kIsWeb) {
        if (webImageBytes == null) {
          throw Exception('webImageBytes is null for web upload');
        }
        uploadTask = ref.putData(
          webImageBytes,
          SettableMetadata(contentType: 'image/jpeg'),
        );
      } else {
        if (file == null) {
          throw Exception('file is null for mobile upload');
        }
        uploadTask = ref.putFile(file);
      }

      final snapshot = await uploadTask;
      return await snapshot.ref.getDownloadURL();
    } catch (e) {
      debugPrint('Error uploading image: $e');
      rethrow;
    }
  }
}
