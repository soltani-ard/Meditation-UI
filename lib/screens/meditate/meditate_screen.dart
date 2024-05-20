import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation_ui/screens/home/reminders_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/constants/strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class MeditateScreen extends StatefulWidget {
  const MeditateScreen({super.key});

  @override
  State<MeditateScreen> createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
  int selectedIndex = 0;
  List catArr = [
    {"icon": TImages.meditationAllIcon, "title": "All"},
    {"icon": TImages.meditationFavIcon, "title": "My"},
    {"icon": TImages.meditationAnxiousIcon, "title": "Anxious"},
    {"icon": TImages.meditationSleepBtn, "title": "Sleep"},
    {"icon": TImages.meditationKidsIcon, "title": "Kids"},
  ];

  List dataArr = [
    {
      "image": TImages.meditation1,
      "title": "7 Days of Calm",
    },
    {
      "image": TImages.meditation2,
      "title": "Anxiety Release",
    },
    {"image": TImages.meditation4, "title": "Reduce Anxiety"},
    {
      "image": TImages.meditation3,
      "title": "Happiness",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    TTexts.meditate,
                    style: TextStyle(
                      color: TColors.primaryText,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    TTexts.meditateSubTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColors.secondaryText,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: catArr.length,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              itemBuilder: (context, index) {
                var cObj = catArr[index];
                return InkWell(
                  onTap: () {
                    selectedIndex = index;
                    setState(() {});
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: selectedIndex == index
                                ? TColors.primary
                                : const Color(0xffA0A3B1),
                            borderRadius: BorderRadius.circular(20)),
                        alignment: Alignment.center,
                        child: Image.asset(
                          cObj['icon'],
                          width: 25,
                          height: 25,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        cObj["title"],
                        style: TextStyle(
                          color: selectedIndex == index
                              ? TColors.primary
                              : TColors.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: const Color(0xffF1DDCF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  TImages.meditationDailyCalmIcon,
                  width: double.maxFinite,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Daily Thought",
                            style: TextStyle(
                              color: TColors.primaryText,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "APP 30 . PAUSE PRACTICE",
                            style: TextStyle(
                              color: TColors.primaryText,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      )),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          TImages.meditationPlayBlackIcon,
                          width: 40,
                          height: 40,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          MasonryGridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            itemCount: dataArr.length,
            itemBuilder: (context, index) {
              var height = index % 4 == 0 || index % 4 == 2
                  ? context.width * 0.55
                  : context.width * 0.45;
              var cObj = dataArr[index];
              return InkWell(
                onTap: () {
                  context.push(const RemindersScreen());
                },
                child: Container(
                  height: height,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        child: Image.asset(
                          cObj["image"],
                          width: double.maxFinite,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                width: double.maxFinite,
                                color: Colors.black12,
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  cObj["title"],
                                  maxLines: 2,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      )),
    );
  }
}
