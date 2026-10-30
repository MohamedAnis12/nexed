import 'package:flutter/material.dart';
import 'package:nexed/core/constants/app_color.dart';
import 'package:nexed/core/utils/validators.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
  });

  final TextEditingController controller;
  final String hintText;
  final bool isPassword;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextSelectionTheme(
      data: const TextSelectionThemeData(
        cursorColor: AppColor.appPrimaryColor,
        selectionColor: Color.fromARGB(75, 29, 79, 216),
        selectionHandleColor: AppColor.appPrimaryColor,
      ),
      child: TextFormField(
        validator: widget.isPassword
            ? (value) => AppValidators.password(value)
            : (value) => AppValidators.email(value),
        controller: widget.controller,
        obscureText: isVisible,
        decoration: InputDecoration(
          hintText: widget.hintText,
          labelStyle: TextStyle(color: AppColor.textSecondaryColor),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColor.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColor.borderColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColor.errorColor),
          ),

          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: Icon(
                    isVisible ? Icons.visibility_off : Icons.visibility,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
