import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CelebrationCard extends StatefulWidget {
  const CelebrationCard({Key? key}) : super(key: key);

  @override
  State<CelebrationCard> createState() => _CelebrationCardState();
}

class _CelebrationCardState extends State<CelebrationCard>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TabBar(
              automaticIndicatorColorAdjustment: false,
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.red,
              isScrollable: true,
              labelColor: const Color(0xFF353D65),
              unselectedLabelColor: const Color.fromARGB(255, 164, 165, 170),
              labelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                fontFamily: 'Playfair Display',
              ),
              padding: const EdgeInsets.all(0),
              indicatorPadding: EdgeInsets.zero,
              labelPadding: const EdgeInsets.symmetric(horizontal: 10),
              tabs: const [
                Tab(
                  text: "Birthdays",
                  iconMargin: EdgeInsets.zero,
                ),
                Tab(
                  text: "Wedding Anniversary",
                  iconMargin: EdgeInsets.zero,
                )
              ],
            ),
            const Spacer(),
          ],
        ),
        SizedBox(
          height: 152,
          child: TabBarView(controller: _tabController, children: [
            ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return const CelebrationTile();
                }),
            const Text("Wedding Anniversary"),
          ]),
        )
      ],
    );
  }
}

class CelebrationTile extends StatelessWidget {
  const CelebrationTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 26,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/Ellipse4.png'),
                  ),
                ),
                Positioned(
                  right: -5,
                  top: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFF8F9FA),
                    radius: 11,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF6ED3DF),
                      radius: 9,
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.hatWizard,
                          size: 13,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Aby Thomas",
                  style: const TextStyle(
                      color: Color(0xFF353D65),
                      fontFamily: 'Playfair Display',
                      fontSize: 13,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Feb 25 2021,Monday",
                  style: const TextStyle(
                      color: Color(0xFF353D65),
                      fontFamily: 'Archivo',
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
