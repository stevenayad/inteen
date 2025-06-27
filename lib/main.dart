import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:intern/Features/presentation/Binding/ProfileBinding.dart';
import 'package:intern/utilites/approutes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCjBZVBbyNTey_R4_F_FUOoO0nUo8kNwmk",
      appId: "1:1033775597248:android:94add6c551c3784a208f25",
      messagingSenderId: "1033775597248",
      projectId: "shopping-fd71e",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: appRoutes,
      initialRoute: '/profile',
      initialBinding: ProfileBinding(),
    );
  }
}
