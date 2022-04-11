import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
        automaticIndicatorColorAdjustment: false,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.red,
        labelColor: Color(0xFF353D65),
        unselectedLabelColor: Color.fromARGB(255, 164, 165, 170),
        labelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
        padding: EdgeInsets.all(0),
        indicatorPadding: EdgeInsets.zero,
        labelPadding: EdgeInsets.symmetric(horizontal: 10),
        tabs: [
          Tab(
            icon: ImageIcon(
              AssetImage("assets/icons/home.png"),
              size: 28,
              color: Color(0xFF3A5A98),
            ),
            text: "Home",
          ),
          Tab(
            icon: ImageIcon(
              AssetImage("assets/icons/family.png"),
              color: Color(0xFF3A5A98),
            ),
            text: "Family",
          ),
          Tab(
            icon: ImageIcon(
              AssetImage("assets/icons/activity.png"),
              color: Color(0xFF3A5A98),
            ),
            text: "Activity",
          ),
          Tab(
            icon: ImageIcon(
              AssetImage("assets/icons/contribution.png"),
              color: Color(0xFF3A5A98),
            ),
            text: "Contribution",
          ),
        ]);
  }
}
