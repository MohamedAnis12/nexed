import 'package:flutter/material.dart';
import 'package:nexed/features/student/widgets/custom_page_icon.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomPageIcon(
              index: 0,
              currentIndex: currentIndex,
              text: "Dash",
              onTap: () => onTap(0),
            ),
            CustomPageIcon(
              index: 1,
              currentIndex: currentIndex,
              text: "Courses",
              onTap: () => onTap(1),
            ),
            CustomPageIcon(
              index: 2,
              currentIndex: currentIndex,
              text: "Tasks",
              onTap: () => onTap(2),
            ),
            CustomPageIcon(
              index: 3,
              currentIndex: currentIndex,
              text: "Advisor",
              onTap: () => onTap(3),
            ),
            CustomPageIcon(
              index: 4,
              currentIndex: currentIndex,
              text: "Profile",
              onTap: () => onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
