import 'package:flutter/material.dart';
import 'package:meditation_ui/utils/constants/colors.dart';

class TabButton extends StatelessWidget {
  const TabButton(
      {super.key,
      required this.icon,
      required this.title,
      required this.isSelected,
      required this.onTap});

  final String icon;
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 44,
            height: 44,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? TColors.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              icon,
              width: 22,
              height: 22,
              color: isSelected ? Colors.white : TColors.secondaryText,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(
                color: isSelected ? TColors.primary : TColors.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
