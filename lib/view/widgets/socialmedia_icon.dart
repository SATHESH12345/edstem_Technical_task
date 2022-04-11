import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaIconView extends StatelessWidget {
  const SocialMediaIconView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SocialMediaIcon(icon: FontAwesomeIcons.twitter),
        SocialMediaIcon(
          icon: FontAwesomeIcons.linkedin,
        ),
        SocialMediaIcon(
          icon: FontAwesomeIcons.facebookF,
        ),
        SocialMediaIcon(
          icon: FontAwesomeIcons.whatsapp,
        ),
        SocialMediaIcon(
          icon: FontAwesomeIcons.googlePlusG,
        )
      ],
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({Key? key, required this.icon}) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        width: 24.56,
        height: 24.56,
        decoration: BoxDecoration(
          color: const Color(0xFF6ED3DF),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: FaIcon(
              icon,
              size: 13.5,
              color: const Color(0xFFFFFFFF),
            )));
  }
}
