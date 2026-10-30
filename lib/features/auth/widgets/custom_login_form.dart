import 'package:flutter/material.dart';
import 'package:nexed/core/constants/app_color.dart';
import 'package:nexed/features/auth/widgets/custom_text_form_field.dart';
import 'package:nexed/shared/widgets/custom_text.dart';

class CustomLoginForm extends StatefulWidget {
  const new({super.key});

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "USER ID / UNIVERSITY EMAIL",
            color: AppColor.textSecondaryColor,
          ),
          CustomTextFormField(controller: emailController, hintText: 'anis@gmail.com',),
        ],
      ),
    );
  }
}

