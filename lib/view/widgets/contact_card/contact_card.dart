import 'package:edstem_test/view/widgets/contact_card/contact_card_row.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            border: Border.all(color: const Color(0xFFE3EEFF))),
        child: Row(
          children: const [
            ContactCardRow(
              title: 'Address',
              text: '601 Lakeland Terrace',
              icon: Icons.fmd_good_rounded,
            ),
            VerticalDivider(
              color: Color(0xFFE3EEFF),
              thickness: 1,
            ),
            ContactCardRow(
              title: 'Phone Number',
              text: '91 6456584156',
              icon: Icons.phone,
            )
          ],
        ),
      ),
    );
  }
}
