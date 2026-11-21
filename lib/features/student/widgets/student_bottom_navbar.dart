import 'package:flutter/material.dart';
import 'package:nexed/features/student/Advisor/presentation/views/advisor_view.dart';
import 'package:nexed/features/student/Profile/presentation/views/profile_view.dart';
import 'package:nexed/features/student/Task/presentation/views/tasks_view.dart';
import 'package:nexed/features/student/courses/presentation/views/courses_view.dart';
import 'package:nexed/features/student/dashboard/presentation/views/dashboard_view.dart';
import 'package:nexed/features/student/widgets/custom_nav_bar.dart';

class StudentBottomNavbar extends StatefulWidget {
  const StudentBottomNavbar({super.key});

  @override
  State<StudentBottomNavbar> createState() => _StudentBottomNavbarState();
}

class _StudentBottomNavbarState extends State<StudentBottomNavbar> {
  int currentIndex = 0;

  final screens = const [
    DashboardView(),
    CoursesView(),
    TasksView(),
    AdvisorView(),
    ProfileView(),
  ];

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: CustomNavBar(
        currentIndex: currentIndex,
        onTap: changePage,
      ),
    );
  }
}
