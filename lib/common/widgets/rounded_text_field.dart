import 'package:flutter/material.dart';
import 'package:meditation_ui/utils/constants/colors.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool? obscureText;
  final TextInputType? textInputType;
  final Widget? suffixIcon;

  const RoundedTextField(
      {super.key,
      required this.hintText,
      this.controller,
      this.obscureText = false,
      this.textInputType,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: TColors.txtBG,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscureText!,
        style: TextStyle(color: TColors.primaryText, fontSize: 16),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: TextStyle(color: TColors.secondaryText, fontSize: 16),
        ),
      ),
    );
  }
}
