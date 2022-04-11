import 'package:edstem_test/view/widgets/MyHouseHolds/house_hold_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHouseHolds extends StatefulWidget {
  const MyHouseHolds({Key? key}) : super(key: key);

  @override
  State<MyHouseHolds> createState() => _MyHouseHoldsState();
}

class _MyHouseHoldsState extends State<MyHouseHolds> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 188,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xFFECF2F8),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'My Households',
              style: GoogleFonts.playfairDisplay(
                fontStyle: FontStyle.normal,
                textStyle: const TextStyle(
                    color: Color(0xFF353D65),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: const [
            HouseHoldTile(
              name: 'Rachel Thomas',
              imageLink: 'assets/images/Ellipse3.png',
              relation: 'Wife',
            ),
            HouseHoldTile(
              name: 'Aby Thomas',
              imageLink: 'assets/images/Ellipse4.png',
              relation: 'Sister',
            ),
            HouseHoldTile(
              name: 'Aby Thomas',
              imageLink: 'assets/images/Ellipse5.png',
              relation: 'Brother',
            )
          ])
        ],
      ),
    );
  }
}
