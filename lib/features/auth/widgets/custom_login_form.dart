import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
  bool check = false;
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
          CustomTextFormField(
            controller: emailController,
            hintText: 'anis@gmail.com',
          ),
          Gap(20),
          CustomText(
            text: "MASTER PASSWORD",
            color: AppColor.textSecondaryColor,
          ),
          CustomTextFormField(
            controller: passwordController,
            hintText: '*************',
            isPassword: true,
          ),
          Row(
            children: [
              Checkbox(
                activeColor: AppColor.appPrimaryColor,
                value: check,
                onChanged: (v) {
                  setState(() {
                    check = v!;
                  });
                },
              ),
              Spacer(),
              CustomText(text: "Forgot?", color: AppColor.textSecondaryColor),
            ],
          ),
          Gap(20),
          CustomButton(
            text: 'SIGN IN →',
            onTap: () {
              if (formKey.currentState!.validate()) {
                print('Login Success');
              }
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.text});
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: AppColor.appPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: CustomText(text: text, color: Colors.white),
        ),
      ),
    );
  }
}
