import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_ui/common/widgets/circle_button.dart';
import 'package:meditation_ui/common/widgets/rounded_button.dart';
import 'package:meditation_ui/screens/home/home_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
  final List dayArray = [
    {'name': 'SU', 'is_selected': true},
    {'name': 'MO', 'is_selected': false},
    {'name': 'TU', 'is_selected': false},
    {'name': 'WE', 'is_selected': false},
    {'name': 'TH', 'is_selected': true},
    {'name': 'FR', 'is_selected': true},
    {'name': 'SA', 'is_selected': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                constraints: BoxConstraints(maxHeight: context.height - 180.0),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      TTexts.headingReminders,
                      style: TextStyle(
                        color: TColors.primaryText,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      TTexts.titleReminders,
                      style: TextStyle(
                        color: TColors.primaryText,
                        fontSize: 22.0,
                      ),
                    ),
                    Text(
                      TTexts.subTitleReminders,
                      style: TextStyle(
                        color: TColors.secondaryText,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: const Color(0xfff5f5f9),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: CupertinoDatePicker(
                        onDateTimeChanged: (DateTime dateTime) {},
                        mode: CupertinoDatePickerMode.time,
                        use24hFormat: false,
                        minuteInterval: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      TTexts.heading2Reminders,
                      style: TextStyle(
                        color: TColors.primaryText,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      TTexts.title2Reminders,
                      style: TextStyle(
                        color: TColors.primaryText,
                        fontSize: 22.0,
                      ),
                    ),
                    Text(
                      TTexts.subTitle2Reminders,
                      style: TextStyle(
                        color: TColors.secondaryText,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: dayArray.map(
                        (dObj) {
                          return CircleButton(
                              title: dObj['name'],
                              isSelected: dObj['is_selected'],
                              onTap: () {
                                setState(() {
                                  dayArray[dayArray.indexOf(dObj)]
                                          ['is_selected'] =
                                      !dObj['is_selected'] ?? false;
                                });
                              });
                        },
                      ).toList(),
                    ),
                  ],
                ),
              ),
              RoundedButton(
                  title: TTexts.save,
                  onPressed: () {
                    context.push(HomeScreen());
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        context.push(HomeScreen());
                      },
                      child: Text(
                        TTexts.noThanks,
                        style: TextStyle(
                          color: TColors.primaryText,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
