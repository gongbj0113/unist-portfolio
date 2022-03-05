import 'package:flutter/material.dart';

class TextBanner extends StatefulWidget {
  final TextSpan text;
  final int speed;
  final int direction;
  final double gap;

  const TextBanner(
      {required this.text,
      this.speed = 1000,
      this.direction = 1,
      this.gap = 10,
      Key? key})
      : super(key: key);

  @override
  State<TextBanner> createState() => _TextBannerState();
}

class _TextBannerState extends State<TextBanner>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.speed));
    //print("aa");
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller!);
    controller!.addListener(() {
      setState(() {});
    });

    controller!.repeat();
    //controller!.forward();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.text.style!.fontSize,
      width: double.infinity,
      child: CustomPaint(
        painter: TextBannerPaint(
            widget.text, widget.direction, animation!.value, widget.gap),
      ),
    );
  }
}

class TextBannerPaint extends CustomPainter {
  final TextSpan text;
  final int direction;
  final double curVal;
  final double gap;

  TextBannerPaint(this.text, this.direction, this.curVal, this.gap);

  @override
  void paint(Canvas canvas, Size size) {
    TextPainter tp = TextPainter(textDirection: TextDirection.ltr);
    tp.text = text;
    tp.layout();

    var v = (curVal * direction * (tp.width+gap));
    if (v > 0) {
      tp.paint(canvas, Offset(v - tp.width - gap, 0));
      while (v <= size.width) {
        tp.paint(canvas, Offset(v, 0));
        v += tp.width + gap;
      }
    } else {
      while (v <= size.width) {
        tp.paint(canvas, Offset(v, 0));
        v += tp.width + gap;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
