import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
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
    Paint paint = Paint();
    paint.color = Colors.yellow;
    paint.strokeWidth = 2.0;
    Path path = Path();
    path.lineTo(0, size.height * 0.65);
    path.cubicTo(size.width, size.height, size.width / 2, size.height / 2,
        size.width, size.height / 2);
    // path.quadraticBezierTo(
    //   size.width * 0.8,
    //   size.height * 0.8,
    //   size.width,
    //   size.height * 0.5,
    // );
    path.lineTo(size.height, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
