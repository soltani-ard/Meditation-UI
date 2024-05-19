import 'package:flutter/material.dart';
import 'package:meditation_ui/utils/constants/colors.dart';

class CircleButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback? onTap;

  const CircleButton(
      {super.key, required this.title, this.isSelected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: isSelected ? TColors.primaryText : Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(width: 1, color: TColors.secondaryText)),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
              color: isSelected ? Colors.white : TColors.secondaryText,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
