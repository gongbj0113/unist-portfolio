import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitlePresent extends StatelessWidget {
  final String title;

  const TitlePresent(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color(0xff3E3E3E),
          height: 10,
          width: 165,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 38, top: 20),
          child: SelectableText(
            title,
            style: GoogleFonts.sen(
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}
