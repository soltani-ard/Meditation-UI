import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meditation_ui/screens/home/reminders_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class ChooseTopicScreen extends StatelessWidget {
  ChooseTopicScreen({super.key});

  final List dataArr = [
    {
      "image": "assets/images/choose_topic/c1.png",
      "title": "Reduce Stress",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/images/choose_topic/c2.png",
      "title": "Improve Performanc"
          "e",
      "color": "FA6E5A",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/images/choose_topic/c3.png",
      "title": "Reduce Anxiety",
      "color": "FEB18F",
      "text_color": "3F414E",
    },
    {
      "image": "assets/images/choose_topic/c4.png",
      "title": "Increase Happiness",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/images/choose_topic/c5.png",
      "title": "Personal Growth",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/images/choose_topic/c6.png",
      "title": "Better Sleep",
      "color": "3F414E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/images/choose_topic/c1.png",
      "title": "Reduce Stress",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/images/choose_topic/c2.png",
      "title": "Improve Performanc"
          "e",
      "color": "FA6E5A",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/images/choose_topic/c3.png",
      "title": "Reduce Anxiety",
      "color": "FEB18F",
      "text_color": "3F414E",
    },
    {
      "image": "assets/images/choose_topic/c4.png",
      "title": "Increase Happiness",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/images/choose_topic/c5.png",
      "title": "Personal Growth",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/images/choose_topic/c6.png",
      "title": "Better Sleep",
      "color": "3F414E",
      "text_color": "FFECCC",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(
              bottom: false,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          TTexts.headingChooseTopic,
                          style: TextStyle(
                              color: TColors.primaryText,
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 5),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          TTexts.titleChooseTopic,
                          style: TextStyle(
                              color: TColors.primaryText, fontSize: 26),
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, bottom: 5),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          TTexts.subTitleChooseTopic,
                          style: TextStyle(
                              color: TColors.secondaryText, fontSize: 20),
                        )),
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(
              child: MasonryGridView.count(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            itemCount: 10,
            itemBuilder: (context, index) {
              var height = index % 4 == 0 || index % 4 == 2
                  ? context.width * 0.55
                  : context.width * 0.45;
              var cObj = dataArr[index];
              return InkWell(
                onTap: (){context.push(const RemindersScreen());},
                child: Container(
                  height: height,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: HexColor.fromHex(cObj["color"]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    //BorderRadius.circular(10),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Image.asset(
                          cObj['image'],
                          fit: BoxFit.fitWidth,
                          width: double.maxFinite,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 15, bottom: 5),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      cObj['title'],
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: HexColor.fromHex(
                                              cObj['text_color']),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
