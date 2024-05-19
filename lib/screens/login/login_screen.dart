import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_ui/common/widgets/rounded_button.dart';
import 'package:meditation_ui/common/widgets/rounded_text_field.dart';
import 'package:meditation_ui/screens/home/welcome_screen.dart';
import 'package:meditation_ui/screens/login/register_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/constants/strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SvgPicture.asset(TImages.loginTopVector, fit: BoxFit.cover),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  context.pop();
                                },
                                child: SvgPicture.asset(
                                  TImages.back,
                                  width: 55,
                                  height: 55,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        TTexts.welcomeBack,
                        style: TextStyle(
                            color: TColors.primaryText,
                            fontSize: 28,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 20),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: double.maxFinite,
                          elevation: 0,
                          color: const Color(0xff8e97fd),
                          height: 60,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide.none,
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              SvgPicture.asset(
                                TImages.loginWithFacebook,
                                width: 25,
                                height: 25,
                              ),
                              const Expanded(
                                child: Text(
                                  TTexts.continueWithFacebook,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: 20),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: double.maxFinite,
                          elevation: 0,
                          color: Colors.white,
                          height: 60,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(color: TColors.tertiary, width: 1),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 15,
                              ),
                              SvgPicture.asset(
                                TImages.loginWithGoogle,
                                width: 25,
                                height: 25,
                              ),
                              Expanded(
                                child: Text(
                                  TTexts.continueWithGoogle,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: TColors.primaryText,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Text(
                TTexts.orLoginWithEmail,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColors.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 35,
              ),
              const RoundedTextField(hintText: TTexts.enterYourEmail),
              const SizedBox(height: 20,),
              const RoundedTextField(hintText: TTexts.enterYourPassword, obscureText: true),
              const SizedBox(height: 20,),
              RoundedButton(title: TTexts.login, onPressed: () {context.push(const WelcomeScreen());}),
              TextButton(onPressed: (){}, child: Text(
                TTexts.forgotPassword,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColors.primaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              )),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    TTexts.createANewAccount,
                    style: TextStyle(
                        color: TColors.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      context.push(const RegisterScreen());
                    },
                    child: Text(
                      TTexts.register,
                      style: TextStyle(
                          color: TColors.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
