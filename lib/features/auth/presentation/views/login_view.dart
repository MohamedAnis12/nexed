import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nexed/core/constants/app_color.dart';
import 'package:nexed/features/auth/widgets/custom_login_form.dart';
import 'package:nexed/features/student/widgets/student_bottom_navbar.dart';
import 'package:nexed/shared/widgets/custom_text.dart';

class LoginView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(50),
                Center(
                  child: Image.asset("assets/images/Logo.png", width: 250),
                ),
                Center(
                  child: CustomText(
                    text: "AI-Powered University Management",
                    color: AppColor.appPrimaryColor,
                  ),
                ),
                Gap(75),
                CustomLoginForm(),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButton(
                      text: "student",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return StudentBottomNavbar();
                            },
                          ),
                        );
                      },
                    ),
                    CustomButton(text: "admin", onTap: () {}),
                    CustomButton(text: "doctor", onTap: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
