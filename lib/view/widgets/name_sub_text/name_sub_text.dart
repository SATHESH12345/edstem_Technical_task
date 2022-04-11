import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameSubText extends StatelessWidget {
  const NameSubText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Peral Land East',
          style: GoogleFonts.archivo(
            textStyle: const TextStyle(
                color: Color(0xFF767C9C),
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Textseparator(),
        const SizedBox(
          width: 10,
        ),
        Text(
          '#56566',
          style: GoogleFonts.archivo(
            textStyle: const TextStyle(
                color: Color(0xFF767C9C),
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Textseparator(),
        const SizedBox(
          width: 10,
        ),
        Text(
          'Male',
          style: GoogleFonts.archivo(
            textStyle: const TextStyle(
                color: Color(0xFF767C9C),
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

class Textseparator extends StatelessWidget {
  const Textseparator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 45,
      child: const Icon(
        Icons.square,
        size: 4.69,
      ),
    );
  }
}
