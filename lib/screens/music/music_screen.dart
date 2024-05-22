import 'package:flutter/material.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/extensions/extensions.dart';

class MusicScreen extends StatelessWidget {
  MusicScreen({super.key});

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
      appBar: AppBar(
        leading: Container(),
        centerTitle: true,
        title: Text('Music',
            style: TextStyle(
                color: TColors.sleepTextColor,
                fontSize: 22,
                fontWeight: FontWeight.w700)),
      ),
      body: GridView.builder(
        itemCount: listArr.length,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.9,
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
              const SizedBox(height: 8,),
              Text(cObj['title'], maxLines: 1, style: TextStyle(color: TColors.sleepTextColor, fontWeight: FontWeight.w700, fontSize: 18),),
              const SizedBox(height: 8,),
              Text(cObj['subtitle'], maxLines: 1, style: TextStyle(color: TColors.sleepTextColor, fontSize: 12),),

            ],
          );
        },
      ),
    );
  }
}
