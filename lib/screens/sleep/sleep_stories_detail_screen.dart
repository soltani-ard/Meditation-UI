import 'package:flutter/material.dart';
import 'package:meditation_ui/common/widgets/rounded_button.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class SleepStoriesDetailScreen extends StatelessWidget {
  SleepStoriesDetailScreen({super.key});

  final List listArr = [
    {
      "image": TImages.musicImage3,
      "title": "Moon Clouds",
      "subtitle": "45 MIN . SLEEP MUSIC",
    },
    {
      "image": TImages.musicImage2,
      "title": "Sweet Sleep",
      "subtitle": "45 MIN . SLEEP MUSIC",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.sleepColor,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              backgroundColor: TColors.sleepColor,
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
                    width: 30,
                    height: 30,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      TImages.downloadButton,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              ],
              expandedHeight: context.width * 0.6,
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Image.asset(
                    TImages.sleepDetailTop,
                    width: context.width,
                    fit: BoxFit.fitWidth,
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
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Night Island",
                      style: TextStyle(
                          color: TColors.sleepTextColor,
                          fontSize: 34,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "45 MIN . SLEEP MUSIC",
                      style: TextStyle(
                          color: TColors.secondaryText,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Ease the mind into a restful night’s sleep  with these deep, amblent tones.",
                      style: TextStyle(
                          color: TColors.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          TImages.favButton,
                          width: 20,
                          height: 20,
                          color: TColors.sleepTextColor,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "24.234 Favorite",
                            style: TextStyle(
                                color: TColors.sleepTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Image.asset(
                          TImages.headphone,
                          width: 20,
                          height: 20,
                          color: TColors.sleepTextColor,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "34.234 Listening",
                            style: TextStyle(
                                color: TColors.sleepTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Divider(
                      height: 2,
                      color: TColors.sleepTextColor,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Related",
                      style: TextStyle(
                          color: TColors.sleepTextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    GridView.builder(
                      itemCount: listArr.length,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: 0.8,
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
              RoundedButton(title: "Play", onPressed: () {}),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
