import 'package:flutter/material.dart';

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
          style: TextStyle(
              color: Color(0xFF353D65),
              fontSize: 13,
              fontFamily: 'Playfair Display',
              fontWeight: FontWeight.w700),
        ),
        Text(
          relation,
          style: const TextStyle(
              fontFamily: 'Archivo',
              color: Color(0xFF767C9C),
              fontSize: 10,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
