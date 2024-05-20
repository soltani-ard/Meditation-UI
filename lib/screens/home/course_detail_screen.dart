import 'package:flutter/material.dart';
import 'package:meditation_ui/common/widgets/select_tab_button.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/constants/strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({super.key});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.white,
              leading: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: Image.asset(
                    TImages.backWhite,
                    width: 55,
                    height: 55,
                  ),
                ),
              ),
              actions: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    TImages.favButton,
                    width: 32,
                    height: 32,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      TImages.downloadButton,
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
              ],
              expandedHeight: context.width * 0.6,
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  child: Image.asset(
                    TImages.courseDetailTop,
                    fit: BoxFit.cover,
                    width: context.width,
                  ),
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      TTexts.goodMorning,
                      style: TextStyle(
                          color: TColors.primaryText,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      TTexts.course,
                      style: TextStyle(
                          color: TColors.secondaryText,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      TTexts.courseSubTitle,
                      style:
                          TextStyle(color: TColors.secondaryText, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          TImages.favButton,
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "24,125 Favorite",
                            style: TextStyle(
                                color: TColors.secondaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                        Image.asset(
                          TImages.headphone,
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "34,125 Listening",
                            style: TextStyle(
                                color: TColors.secondaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Pick a Narrator",
                      style: TextStyle(
                          color: TColors.primaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SelectTabButton(
                    title: 'MALE VOICE',
                    isSelected: selectedTab == 0,
                    onTap: () {
                      setState(() {
                        selectedTab = 0;
                      });
                    },
                  ),
                  SelectTabButton(
                    title: 'FEMALE VOICE',
                    isSelected: selectedTab == 1,
                    onTap: () {
                      setState(() {
                        selectedTab = 1;
                      });
                    },
                  ),
                ],
              ),
              const Divider(
                height: 2,
              ),
              ListView.separated(
                itemCount: 10,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          index == 0
                              ? TImages.playIconColor
                              : TImages.playIconBorder,
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Focus Attention",
                                style: TextStyle(
                                  color: TColors.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "10 MIN",
                                style: TextStyle(
                                  color: TColors.secondaryText,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  height: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
