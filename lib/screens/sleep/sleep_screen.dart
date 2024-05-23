import 'package:flutter/material.dart';
import 'package:meditation_ui/screens/sleep/sleep_welcome_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/constants/strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  late int selectedIndex = 0;
  List catArr = [
    {"icon": TImages.meditationAllIcon, "title": "All"},
    {"icon": TImages.meditationFavIcon, "title": "My"},
    {"icon": TImages.meditationAnxiousIcon, "title": "Anxious"},
    {"icon": TImages.meditationSleepBtn, "title": "Sleep"},
    {"icon": TImages.meditationKidsIcon, "title": "Kids"},
  ];

  final List listArr = [
    {
      "image": TImages.musicImage1,
      "title": "Night Island",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": TImages.musicImage2,
      "title": "Sweet Sleep",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": TImages.musicImage3,
      "title": "Good Night",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": TImages.musicImage4,
      "title": "Moon Clouds",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": TImages.musicImage2,
      "title": "Night Island",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": TImages.musicImage1,
      "title": "Sweet Sleep",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": TImages.musicImage4,
      "title": "Good Night",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
    {
      "image": TImages.musicImage3,
      "title": "Moon Clouds",
      "subtitle": "45 MIN . SLEEP MUSIC"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.sleepColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(TImages.sleepTop,
                    width: double.maxFinite, fit: BoxFit.fitWidth),
                Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          TTexts.sleepStories,
                          maxLines: 1,
                          style: TextStyle(
                              color: TColors.sleepTextColor,
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        TTexts.sleepStoriesSubTitle,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: TColors.sleepTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: catArr.length,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        itemBuilder: (context, index) {
                          var cObj = catArr[index];
                          return GestureDetector(
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
                            TImages.sleepBox,
                            width: double.maxFinite,
                            fit: BoxFit.fitWidth,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "The Ocean Moon",
                                      style: TextStyle(
                                        color: Color(0xffFFE7BF),
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Non-stop 8- hour mixes of our\nmost popular sleep audio",
                                      style: TextStyle(
                                        color: TColors.tertiary,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        context
                                            .push(const SleepWelcomeScreen());
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: TColors.tertiary,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 15),
                                        child: Text(
                                          "START",
                                          style: TextStyle(
                                            color: TColors.primaryText,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GridView.builder(
              itemCount: listArr.length,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.95,
              ),
              itemBuilder: (context, index) {
                var cObj = listArr[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        cObj['image'],
                        width: double.maxFinite,
                        height: context.width * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      cObj['title'],
                      maxLines: 1,
                      style: TextStyle(
                          color: TColors.sleepTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      cObj['subtitle'],
                      maxLines: 1,
                      style: TextStyle(
                          color: TColors.sleepTextColor, fontSize: 12),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
