import 'package:flutter/material.dart';
import 'package:meditation_ui/common/widgets/tab_button.dart';
import 'package:meditation_ui/screens/home/home_screen.dart';
import 'package:meditation_ui/screens/meditate/meditate_screen.dart';
import 'package:meditation_ui/screens/music/music_screen.dart';
import 'package:meditation_ui/screens/sleep/sleep_screen.dart';
import 'package:meditation_ui/utils/constants/colors.dart';
import 'package:meditation_ui/utils/constants/image_strings.dart';
import 'package:meditation_ui/utils/constants/strings.dart';

class MainTabViewScreen extends StatefulWidget {
  const MainTabViewScreen({super.key});

  @override
  State<MainTabViewScreen> createState() => _MainTabViewScreenState();
}

class _MainTabViewScreenState extends State<MainTabViewScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectedTab = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller!.addListener(() {
      selectedTab = controller!.index ?? 0;
      setState(() {});
    });
  }

  void changeTab(int index) {
    selectedTab = index;
    controller?.animateTo(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          HomeScreen(),
          const SleepScreen(),
          const MeditateScreen(),
          MusicScreen(),
          Container(
            color: Colors.cyan,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 15, bottom: 8),
        decoration: BoxDecoration(
          color: selectedTab == 1 || selectedTab == 3 ? TColors.sleepColor : Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 4, offset: Offset(0, -4))
          ],
        ),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                  icon: TImages.tabHome,
                  title: TTexts.homeTab,
                  isSelected: selectedTab == 0,
                  onTap: () {
                    changeTab(0);
                  }),
              TabButton(
                  icon: TImages.tabSleep,
                  title: TTexts.tabSleep,
                  isSelected: selectedTab == 1,
                  onTap: () {
                    changeTab(1);
                  }),
              TabButton(
                  icon: TImages.tabMeditate,
                  title: TTexts.tabMeditate,
                  isSelected: selectedTab == 2,
                  onTap: () {
                    changeTab(2);
                  }),
              TabButton(
                  icon: TImages.tabMusic,
                  title: TTexts.tabMusic,
                  isSelected: selectedTab == 3,
                  onTap: () {
                    changeTab(3);
                  }),
              TabButton(
                  icon: TImages.tabProfile,
                  title: TTexts.tabProfile,
                  isSelected: selectedTab == 4,
                  onTap: () {
                    changeTab(4);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
