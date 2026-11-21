import 'package:flutter/material.dart';
import 'package:nexed/core/constants/app_color.dart';

class CustomPageIcon extends StatelessWidget {
  const CustomPageIcon({
    super.key,
    required this.index,
    required this.text,
    required this.currentIndex,
    required this.onTap,
  });

  final int index;
  final int currentIndex;
  final String text;
  final VoidCallback onTap;

  @override
  @override
  Widget build(BuildContext context) {
    final isSelected = index == currentIndex;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(32),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        height: 40,
        width: isSelected ? 85 : 75,
        decoration: BoxDecoration(
          color: isSelected ? AppColor.appPrimaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : AppColor.textSecondaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
