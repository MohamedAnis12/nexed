import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nexed/core/constants/app_color.dart';
import 'package:nexed/shared/widgets/custom_text.dart';

class DashboardView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Gap(50),
            Row(
              children: [
                CustomText(text: "Mohamed Anis", fontSize: 24),
                Spacer(),
                Icon(
                  Icons.notifications_none_outlined,
                  color: AppColor.warningColor,
                  size: 32,
                ),
              ],
            ),
            Divider(thickness: 2, color: AppColor.borderColor),
            Gap(20),
            CustomDashBoard(),
          ],
        ),
      ),
    );
  }
}

class CustomDashBoard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: BoxBorder.all(color: AppColor.borderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "FALL 2024 · CS YEAR 2",
                color: AppColor.textSecondaryColor,
                fontSize: 16,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffEFF6FF),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: CustomText(
                    text: "welcome back, Anis 👋",
                    color: AppColor.appPrimaryColor,
                  ),
                ),
              ),
              Gap(5),
              Row(children: [CustomGpaDashboard()]),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomGpaDashboard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 85,
        decoration: BoxDecoration(
          color: AppColor.appPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "CUMULATIVE GPA",color: Colors.white,fontSize: 16,),
              Text("3.8",style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold),)
              
            ],
          ),
        ),
      ),
    );
  }
}
