import 'package:flutter/material.dart';
import 'package:meditation_ui/utils/constants/colors.dart';

class SelectTabButton extends StatelessWidget {
  const SelectTabButton(
      {super.key,
      required this.title,
      required this.isSelected,
      required this.onTap});

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? TColors.primary : TColors.secondaryText),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40),
            width: 50,
            height: 2,
            color: isSelected ? TColors.primary : Colors.transparent,
          )
        ],
      ),
    ));
  }
}
