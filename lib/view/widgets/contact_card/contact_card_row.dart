import 'package:flutter/material.dart';

class ContactCardRow extends StatelessWidget {
  const ContactCardRow(
      {Key? key, required this.title, required this.text, required this.icon})
      : super(key: key);
  final String title;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 17,
            height: 17,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFF6ED3DF)),
            child: Icon(
              icon,
              size: 12,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Color(0xFF353D65),
                    fontFamily: 'Playfair Display',
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                text,
                style: TextStyle(
                    color: Color(0xFF353D65),
                    fontFamily: 'Archivo',
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
