import 'package:flutter/material.dart';

class Emoji extends StatefulWidget {
  const Emoji({Key? key}) : super(key: key);

  @override
  State<Emoji> createState() => _EmojiState();
}

class _EmojiState extends State<Emoji> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emojes"),
        centerTitle: true,
      ),
      body: Center(
          child: CustomPaint(
        size: Size(double.infinity, double.infinity),
        painter: MyPainter(),
      )),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..color = Colors.yellow.shade500
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 6;
    final paint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round;

    final paint2 = Paint()
      ..color = Colors.yellow
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;

    //  emoje 1

    canvas.drawCircle(Offset(size.width / 3, size.height / 6), 60, paint1);

    canvas.drawCircle(Offset(size.width / 3, size.height / 6), 52, paint);

    canvas.drawLine(Offset(size.width / 2.6, size.height / 5.1),
        Offset(size.width / 3.5, size.height / 5.1), paint2);

    canvas.drawCircle(Offset(size.width / 2.6, size.height / 6.8), 8, paint2);

    canvas.drawCircle(Offset(size.width / 3.4, size.height / 6.8), 8, paint2);

    // emoji 2

    canvas.drawCircle(Offset(size.width / 4, size.height / 2), 60, paint1);

    //  emoji 3

    canvas.drawCircle(Offset(size.width / 3, size.height / 1.2), 60, paint1);

    //  emoji 3

    canvas.drawCircle(Offset(size.width / 1.5, size.height / 3), 60, paint1);

    //  emoji 3

    canvas.drawCircle(Offset(size.width / 1.5, size.height / 1.5), 60, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
