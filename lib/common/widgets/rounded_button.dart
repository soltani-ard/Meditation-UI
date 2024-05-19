import 'package:flutter/material.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/enums.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final RoundedButtonType roundedButtonType;
  final VoidCallback onPressed;

  const RoundedButton(
      {super.key,
      required this.title,
      this.roundedButtonType = RoundedButtonType.primary,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.maxFinite,
        elevation: 0,
        color: roundedButtonType == RoundedButtonType.primary
            ? TColors.primary
            : TColors.tertiary,
        height: 60,
        shape: RoundedRectangleBorder(
            side: BorderSide.none, borderRadius: BorderRadius.circular(30)),
        child: Text(
          title,
          style: TextStyle(
              color: roundedButtonType == RoundedButtonType.primary
                  ? Colors.white
                  : TColors.primaryText,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
