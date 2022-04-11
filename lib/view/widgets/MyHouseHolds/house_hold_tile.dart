import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HouseHoldTile extends StatelessWidget {
  const HouseHoldTile(
      {Key? key,
      required this.imageLink,
      required this.relation,
      required this.name})
      : super(key: key);
  final String imageLink;
  final String relation;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 38,
          backgroundImage: AssetImage(imageLink),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: GoogleFonts.playfairDisplay(
            fontStyle: FontStyle.normal,
            textStyle: const TextStyle(
                color: Color(0xFF353D65),
                fontSize: 13,
                fontWeight: FontWeight.w700),
          ),
        ),
        Text(
          relation,
          style: GoogleFonts.archivo(
            textStyle: const TextStyle(
                color: Color(0xFF767C9C),
                fontSize: 10,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
