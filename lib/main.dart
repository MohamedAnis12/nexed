import 'package:flutter/material.dart';
import 'package:nexed/core/constants/app_color.dart';
import 'package:nexed/features/auth/presentation/views/login_view.dart';

void main() {
  runApp(const NexED());
}

class NexED extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColor.backgroundColor),

      home: LoginView(),
    );
  }
}
