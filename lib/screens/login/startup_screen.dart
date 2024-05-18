import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_ui/common/widgets/rounded_button.dart';
import 'package:meditation_ui/screens/login/login_screen.dart';
import 'package:meditation_ui/screens/login/register_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/constants/strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
              children: [
        SvgPicture.asset(TImages.startupVector),
        const Spacer(),
        Text(
          TTexts.startUpTitle,
          style: TextStyle(
              color: TColors.primaryText,
              fontSize: 30,
              fontWeight: FontWeight.w700),
        ),
        Text(
          TTexts.startUpSubTitle,
          style: TextStyle(color: TColors.secondaryText, fontSize: 16),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        RoundedButton(title: TTexts.register, onPressed: () {context.push(const RegisterScreen());}),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              TTexts.alreadyHaveAccount,
              style: TextStyle(
                  color: TColors.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            TextButton(
              onPressed: () {
                context.push(const LoginScreen());
              },
              child: Text(
                TTexts.login,
                style: TextStyle(
                    color: TColors.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        const Spacer(),
              ],
            ));
  }
}
