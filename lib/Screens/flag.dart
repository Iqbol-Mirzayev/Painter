import 'package:flutter/material.dart';

class Flag extends StatefulWidget {
  const Flag({Key? key}) : super(key: key);

  @override
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flags"),
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
      ..color = Colors.blue.shade400
      ..strokeWidth = 90;
    final paint2 = Paint()
      ..color = Colors.red
      ..strokeWidth = 8;
    final paint3 = Paint()
      ..color = Colors.green
      ..strokeWidth = 90;

    // blue line

    canvas.drawLine(Offset(size.width, size.height - 550),
        Offset(size.width - size.width, size.height - 550), paint1);

    //  green line

    canvas.drawLine(Offset(size.width, size.height / 2.2),
        Offset(size.width - size.width, size.height / 2.2), paint3);

    //  red Line
    canvas.drawLine(Offset(size.width, size.height - 420),
        Offset(size.width - size.width, size.height - 420), paint2);

    //  red Line
    canvas.drawLine(Offset(size.width, size.height - 500),
        Offset(size.width - size.width, size.height - 500), paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
