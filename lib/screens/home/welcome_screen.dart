import 'package:flutter/material.dart';
import 'package:meditation_ui/common/widgets/rounded_button.dart';
import 'package:meditation_ui/screens/home/choose_topic_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/enums.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/constants/strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8e97fd),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            TImages.welcomeVector,
            width: context.width,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    TImages.logo,
                    width: context.width * 0.5,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    TTexts.headingWelcome,
                    style: TextStyle(
                        color: TColors.primaryTextWhite,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    TTexts.titleWelcome,
                    style: TextStyle(
                        color: TColors.primaryTextWhite, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    TTexts.subTitleWelcome,
                    style: TextStyle(
                        color: TColors.primaryTextWhite, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  RoundedButton(
                      title: TTexts.getStarted,
                      roundedButtonType: RoundedButtonType.secondary,
                      onPressed: () {context.push(ChooseTopicScreen());}),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
