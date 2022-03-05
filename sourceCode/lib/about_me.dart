import 'package:flutter/material.dart';
import 'package:gongbj_portfolio/TextBanner.dart';
import 'package:gongbj_portfolio/TitlePresent.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  Widget diagramMe() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10, left: 80),
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 140,
              width: 600,
              decoration: const BoxDecoration(
                color: Color(0xFFF4F4F4),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(110),
                  bottomRight: Radius.circular(110),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 80 + 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "-> 호기심 많은 프로그래머 지망생",
                      style: GoogleFonts.gothicA1(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "-> 취미 : 코딩,",
                          style: GoogleFonts.gothicA1(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "   유튜브보기, 넷플릭스보기, 웹툰보기, ...",
                          style: GoogleFonts.gothicA1(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Text(
                      "-> HeXA 지원을 희망중",
                      style: GoogleFonts.gothicA1(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(63),
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
          height: 160,
          width: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "공병준",
                style: GoogleFonts.nanumGothic(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 6),
              Text(
                "UNIST 20221021",
                style: GoogleFonts.gothicA1(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget aExperienceItem(
      String asset, Color color, String title, String explain) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 140,
        height: 140,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(38)),
            boxShadow: [
              BoxShadow(
                color: Color(0x3FDACFE8),
                offset: Offset(-7, -7),
                blurRadius: 15,
                spreadRadius: 5,
              ),
              BoxShadow(
                color: Color(0x3FDDD9DD),
                offset: Offset(7, 7),
                blurRadius: 15,
                spreadRadius: 5,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                child: Image(
                  image: AssetImage(asset),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: color,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                explain,
                style: GoogleFonts.roboto(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget experiencesItemsBar() {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF3F3F3),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              aExperienceItem("assets/android.png", Color(0xFF00DE85),
                  "Android", "안드로이드 앱 개발"),
              aExperienceItem(
                  "assets/unity.png", Color(0xFF000000), "Unity", "게임 개발"),
              aExperienceItem(
                  "assets/blender.png", Color(0xFFFA861A), "Blender", "3D 모델링"),
              aExperienceItem("assets/processing.png", Color(0xFF0468FF),
                  "Processing", "그래픽 소프트웨어 개발"),
              aExperienceItem("assets/tensorflow.png", Color(0xFFFF8500),
                  "Tensorflow", "인공지능 개발"),
              aExperienceItem("assets/flutter.png", Color(0xFF54C5F8),
                  "Flutter", "멀티플랫폼 앱 개발"),
            ],
          ),
        ),
      ),
    );
  }

  Widget aLanguage(String name) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 50,
        decoration: const ShapeDecoration(
          shape: StadiumBorder(),
          color: Colors.white,
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Text(
          name,
          style: GoogleFonts.roboto(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 15.5),
        ),
      ),
    );
  }

  Widget lotsOfLanguages() {
    return SizedBox(
      height: 380,
      width: 960,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 960,
              height: 270,
              decoration: const ShapeDecoration(
                shape: StadiumBorder(),
                color: Color(0xFFF4F4F4),
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 310,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAFAFA),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1E000000),
                        offset: Offset(0, 0),
                        spreadRadius: 2,
                        blurRadius: 26,
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFFE8E8E8),
                      width: 2,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 34, horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        "당장 실개발에",
                        style: GoogleFonts.gothicA1(
                          color: Colors.black,
                          fontSize: 15.5,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "사용할 수 있는 언어",
                        style: GoogleFonts.gothicA1(
                          color: Colors.black,
                          fontSize: 15.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 3,
                        width: 40,
                        color: const Color(0xFFA5A5A5),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          aLanguage("Java"),
                          const SizedBox(width: 10),
                          aLanguage("C"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          aLanguage("Python"),
                          const SizedBox(width: 10),
                          aLanguage("C#"),
                        ],
                      ),
                      aLanguage("Dart"),
                    ],
                  ),
                ),
                const SizedBox(width: 50),
                Container(
                  width: 310,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAFAFA),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1E000000),
                        offset: Offset(0, 0),
                        spreadRadius: 2,
                        blurRadius: 26,
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFFE8E8E8),
                      width: 2,
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 34, horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        "인터넷 좀 검색해가면",
                        style: GoogleFonts.gothicA1(
                          color: Colors.black,
                          fontSize: 15.5,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "실개발에 사용할 수 있는 언어",
                        style: GoogleFonts.gothicA1(
                          color: Colors.black,
                          fontSize: 15.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 3,
                        width: 40,
                        color: const Color(0xFFA5A5A5),
                      ),
                      const SizedBox(height: 30),
                      aLanguage("Javascript"),
                      aLanguage("Kotlin"),
                      aLanguage("C++"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 50),
          child: TitlePresent("About Me"),
        ),
        const SizedBox(height: 40),
        Align(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: diagramMe(),
            ),
          ),
        ),
        const SizedBox(height: 50),
        Align(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "어릴 때 부터 프로그래밍에 흥미를 느껴 코딩 언어를 공부하고 이것 저것을 만들어 보았습니다.\n상상했던 것들을 코드로 구현하고 기대했던 프로그램이 완성되면 매우 뿌듯함을 느낍니다.",
              style: GoogleFonts.gothicA1(
                fontSize: 14.5,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 80),
        Align(
          child: Container(
            color: Color(0xFFDFDFDF),
            width: 80,
            height: 4,
          ),
        ),
        const SizedBox(height: 50),
        Align(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "프로그래밍을 좋아해 다양한 분야의 개발을 시도하며 경험을 쌓았습니다.",
              style: GoogleFonts.gothicA1(
                fontSize: 15.5,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 18),
        experiencesItemsBar(),
        const SizedBox(height: 90),
        Align(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "이에 따라, 개발을 위해 다양한 언어를 공부하게 되었습니다.",
              style: GoogleFonts.gothicA1(
                fontSize: 15.5,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 90),
        Align(
          alignment: Alignment.center,
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: lotsOfLanguages(),
            ),
          ),
        ),
        const SizedBox(height: 120),
        Align(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  "처음에는 무작정 개발을 시작하고 앱을 디자인 했지만",
                  style: GoogleFonts.gothicA1(
                    fontSize: 14.5,
                    color: Colors.black,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  "자꾸 경악스러운 결과물이 탄생해",
                  style: GoogleFonts.gothicA1(
                    fontSize: 14.5,
                    color: Colors.black,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                Text(
                  "프로포타입을 제작할 수 있는 디자인 툴인 Figma를 익혔습니다.",
                  style: GoogleFonts.gothicA1(
                    fontSize: 15.5,
                    color: Colors.black,
                    height: 1.5,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  "(이 웹 사이트도 먼저 Figma로 디자인했습니다)",
                  style: GoogleFonts.gothicA1(
                    fontSize: 13.5,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 60),
        const Align(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Image(
                width: 800,
                image: AssetImage("assets/workflow.png"),
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
