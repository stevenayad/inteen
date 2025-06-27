import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intern/Features/data/Model/userModel.dart';
import 'package:intern/Features/presentation/Controller/profileController.dart';
import 'package:intern/Features/presentation/View/Widget/SectionRadio.dart';
import 'package:intern/utilites/appconst.dart';
import 'package:intern/utilites/widget/CustomButton.dart';
import 'package:intern/utilites/widget/CustomTextform.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({super.key, required this.user});
  final UserModel user;
  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController dateController;
  

  @override
  void initState() {
    super.initState();

    nameController = TextEditingController(text: widget.user.name);
    emailController = TextEditingController(text: widget.user.email);
    phoneController = TextEditingController(text: widget.user.phone);
    dateController = TextEditingController(text: widget.user.date);
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          children: [
            CustomTextField(
              "Full Name",
              nameController,
              keyboardType: TextInputType.name,
              validator:
                  (val) => val?.isEmpty ?? true ? "Enter your name" : null,
            ),
            CustomTextField(
              "Email",
              emailController,
              keyboardType: TextInputType.emailAddress,
              validator:
                  (val) =>
                      val?.contains('@') ?? false ? null : "Enter valid email",
            ),
            CustomTextField(
              "Mobile Number",
              phoneController,
              keyboardType: TextInputType.phone,
            ),
            CustomTextField(
              "Date Of Birth",
              dateController,
              keyboardType: TextInputType.datetime,

              readOnly: true,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gender", style: AppConstants.normalText),
                const RadioSection(),
              ],
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: 'Update Profile',
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  final updatedUser = widget.user.copyWith(
                    name: nameController.text,
                    email: emailController.text,
                    phone: phoneController.text,
                  );
                  final controller = Get.find<ProfileController>();
                  controller.updateUser(updatedUser);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
