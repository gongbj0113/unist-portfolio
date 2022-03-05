import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'TitlePresent.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 50),
          child: TitlePresent("Projects"),
        ),
        const SizedBox(height: 80),
        Padding(
          padding: const EdgeInsets.only(left: 50 + 38),
          child: Text(
            "Android 개발 프로젝트",
            style: GoogleFonts.nanumGothic(
              fontSize: 20,
              color: Colors.black,
              height: 1.5,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
