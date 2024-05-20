import 'package:flutter/material.dart';
import 'package:meditation_ui/screens/home/course_detail_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/constants/strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List rArr = [
    {
      "image": "assets/images/home/r1.png",
      "title": "Focus",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/images/home/r2.png",
      "title": "Happiness",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/images/home/r1.png",
      "title": "Focus",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
    {
      "image": "assets/images/home/r2.png",
      "title": "Happiness",
      "subtitle": "MEDITATION . 3-10 MIN",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(TImages.logoBlack, width: context.width * 0.5),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TTexts.titleHome,
                      style: TextStyle(
                        color: TColors.primaryText,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      TTexts.subTitleHome,
                      style: TextStyle(
                        color: TColors.secondaryText,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              context.push(const CourseDetailScreen());
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xff8e97fd),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            TImages.courseH1,
                                            width: 80,
                                            height: 80,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Basics",
                                              style: TextStyle(
                                                color: TColors.tertiary,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Text("COURSE",
                                                style: TextStyle(
                                                    color: TColors.tertiary,
                                                    fontSize: 11)),
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("3-10 MIN",
                                                    style: TextStyle(
                                                        color: TColors.tertiary,
                                                        fontSize: 11)),
                                                InkWell(
                                                  onTap: () {
                                                    context.push(
                                                        const CourseDetailScreen());
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: TColors.tertiary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 15,
                                                          vertical: 8),
                                                      child: Text("START",
                                                          style: TextStyle(
                                                              color: TColors
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 12)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              context.push(const CourseDetailScreen());
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xffFFC97E),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            TImages.courseH2,
                                            width: 80,
                                            height: 80,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Basics",
                                              style: TextStyle(
                                                color: TColors.primaryText,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Text("COURSE",
                                                style: TextStyle(
                                                    color: TColors.primaryText,
                                                    fontSize: 11)),
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("3-10 MIN",
                                                    style: TextStyle(
                                                        color:
                                                            TColors.primaryText,
                                                        fontSize: 11)),
                                                InkWell(
                                                  onTap: () {
                                                    context.push(
                                                        const CourseDetailScreen());
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: TColors.tertiary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 15,
                                                          vertical: 8),
                                                      child: Text("START",
                                                          style: TextStyle(
                                                              color: TColors
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 12)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Daily Thought
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: const Color(0xff333242),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            TImages.courseDailyBG,
                            fit: BoxFit.fitWidth,
                            width: double.maxFinite,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 15),
                            child: Row(
                              children: [
                                const Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Daily Thought",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "MEDITATION . 3-10 MIN",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                )),
                                InkWell(
                                  onTap: () {
                                    context.push(const CourseDetailScreen());
                                  },
                                  child: Image.asset(
                                    TImages.playIcon,
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
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Recommended for you",
                      style: TextStyle(
                        color: TColors.primaryText,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: context.width * 0.7,
                child: ListView.separated(
                  itemCount: rArr.length,
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  itemBuilder: (context, index) {
                    var rObj = rArr[index];
                    return SizedBox(
                      width: context.width * 0.35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              rObj["image"],
                              width: context.width * 0.35,
                              height: context.height * 0.18,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            rObj["title"],
                            style: TextStyle(
                              color: TColors.primaryText,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            rObj["subtitle"],
                            style: TextStyle(
                                color: TColors.primaryText, fontSize: 11),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
