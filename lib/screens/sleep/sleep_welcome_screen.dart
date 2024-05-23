import 'package:flutter/material.dart';
import 'package:meditation_ui/common/widgets/rounded_button.dart';
import 'package:meditation_ui/screens/sleep/sleep_stories_detail_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/enums.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/constants/strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class SleepWelcomeScreen extends StatelessWidget {
  const SleepWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Stack(
        children: [
          Image.asset(
            TImages.sleepWelcomeBackground,
            width: context.width,
            height: context.height,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: context.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Text(
                  TTexts.titleSleepWelcome,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColors.primaryTextWhite,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  TTexts.subTitleSleepWelcome,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: TColors.primaryTextWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
                const Spacer(),
                Image.asset(TImages.sleepBirds, width: context.width * 0.8),
                const Spacer(
                  flex: 2,
                ),
                RoundedButton(
                    title: TTexts.getStarted,
                    roundedButtonType: RoundedButtonType.primary,
                    onPressed: () {
                      context.push(SleepStoriesDetailScreen());
                    }),
                const Spacer(),
              ],
            ),
          )
        ],
      )),
    );
  }
}
