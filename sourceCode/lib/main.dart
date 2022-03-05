import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gongbj_portfolio/about_me.dart';
import 'package:gongbj_portfolio/my_projects.dart';
import 'package:google_fonts/google_fonts.dart';

import 'TextBanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final ScrollController scrollController = ScrollController();
  late final ScrollController scrollController2;

  Widget topAppBar() {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            SelectableText(
              "G",
              style: GoogleFonts.sen(
                fontWeight: FontWeight.w700,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      scrollController.animateTo(scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 1000), curve: Curves.ease);
                      scrollController2.animateTo(0, duration: Duration(milliseconds: 1000), curve: Curves.ease);
                    },
                    child: Text(
                      "AboutMe",
                      style: GoogleFonts.roboto(
                        color: Colors.white.withAlpha(175),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {
                      scrollController.animateTo(scrollController.position.maxScrollExtent, duration: Duration(milliseconds: 1000), curve: Curves.ease);
                      scrollController2.animateTo(480, duration: Duration(milliseconds: 1000), curve: Curves.ease);
                    },
                    child: Text(
                      "Skils",
                      style: GoogleFonts.roboto(
                        color: Colors.white.withAlpha(175),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Projects",
                      style: GoogleFonts.roboto(
                        color: Colors.white.withAlpha(175),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget myNameHorizontalLine(int dir) {
    return TextBanner(
      text: TextSpan(
        text: "Byeong Joon Gong",
        style: GoogleFonts.roboto(
          color: Colors.white.withAlpha(153),
          letterSpacing: 20 * 0.35,
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
      ),
      direction: dir,
      gap: 100,
      speed: 7000,
    );
  }

  Widget topBannerBody(constraint) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF503C3C).withAlpha(
          lerpDouble(224, 255, (660 - constraint.maxHeight) / 660)!.toInt()),
      child: Column(
        children: [
          topAppBar(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                constraint.maxHeight > 200
                    ? myNameHorizontalLine(1)
                    : SizedBox(),
                SizedBox(height: 140),
                FittedBox(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 300),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              " UNIST 22학번",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.nanumGothic(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            SizedBox(height: 14),
                            Text(
                              "공병준의",
                              textAlign: TextAlign.left,
                              style: GoogleFonts.nanumGothic(
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 20),
                            ),
                          ],
                        ),
                        SizedBox(width: 140),
                        Text(
                          "Portfolio!",
                          style: GoogleFonts.sen(
                            fontSize: 80,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 100),
                constraint.maxHeight > 200
                    ? myNameHorizontalLine(-1)
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    scrollController2 = ScrollController();
    scrollController2.addListener(() {
      var innerPos      = scrollController2.position.pixels;
      var maxOuterPos   = scrollController.position.maxScrollExtent;
      var currentOutPos = scrollController.position.pixels;

      if(innerPos >= 0 && currentOutPos < maxOuterPos) {
        scrollController.position.jumpTo(innerPos+currentOutPos);
      }else{
        var currenParentPos = innerPos + currentOutPos;
        scrollController.position.jumpTo(currenParentPos);
      }

      print(scrollController2.position.pixels);
    });

    return Scaffold(
      body: NestedScrollView(
        controller: scrollController,
        floatHeaderSlivers: false,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: false,
              expandedHeight: 660,
              toolbarHeight: 60,
              flexibleSpace: Stack(
                children: [
                  const Image(
                    image: AssetImage("assets/top_banner_img.png"),
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  LayoutBuilder(
                    builder: (ctx, constraint) {
                      return ClipRect(
                        child: topBannerBody(constraint),
                      );
                    },
                  ),
                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          controller: scrollController2,
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 100,
                ),
                child: AboutMe(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 200, bottom: 300),
                child: MyProjects(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
