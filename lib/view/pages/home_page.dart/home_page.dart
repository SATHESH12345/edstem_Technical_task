import 'package:edstem_test/view/widgets/app_bar/app_bar.dart';
import 'package:edstem_test/view/widgets/celebration_card/celebration_card.dart';
import 'package:edstem_test/view/widgets/contact_card/contact_card.dart';
import 'package:edstem_test/view/widgets/social_media_icon_view/socialmedia_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/MyHouseHolds/my_house_holds.dart';
import '../../widgets/bottom_navbar/bottom_nav_bar.dart';
import '../../widgets/name_sub_text/name_sub_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0XFFFFFFFF),
        bottomNavigationBar: const BottomNavBar(),
        appBar: const BaseAppBar(),
        drawer: const Drawer(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        color: const Color.fromARGB(44, 75, 73, 73))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Spacer(),
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/Ellipse2.png",
                            ),
                            radius: 55.5,
                          ),
                          Spacer(),
                          Icon(
                            Icons.edit,
                            size: 20,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Abraham Thomas',
                      style: GoogleFonts.playfairDisplay(
                        textStyle: const TextStyle(
                            color: Color(0xFF353D65),
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const NameSubText(),
                    const SizedBox(
                      height: 21,
                    ),
                    const SocialMediaIconView(),
                    const ContactCard(),
                    const MyHouseHolds(),
                    const SizedBox(
                      child: CelebrationCard(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
