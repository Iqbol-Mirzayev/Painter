import 'package:flutter/material.dart';

class SnowMan extends StatefulWidget {
  const SnowMan({Key? key}) : super(key: key);

  @override
  State<SnowMan> createState() => _SnowManState();
}

class _SnowManState extends State<SnowMan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnowMan"),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        color: Colors.green,
        child: CustomPaint(
          size: Size(double.infinity, double.infinity),
          painter: MyPainter(),
        ),
      )),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;
    final paint1 = Paint()
      ..color = Colors.amber
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    final paint2 = Paint()
      ..color = Colors.black
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round;

    var path = Path();

    path.lineTo(10, 20);

    // snowMan   skletHead
    canvas.drawCircle(Offset(size.width / 2, size.height / 5), 150, paint);

    // arms

    canvas.drawLine(
        Offset(size.width / 1.9, size.height / 3), Offset(350, 180), paint2);
    canvas.drawLine(
        Offset(size.width / 1.9, size.height / 3), Offset(38, 180), paint2);

    //  snowMan sklet Body
    canvas.drawCircle(Offset(size.width / 2, size.height / 2.9), 75, paint);
    canvas.drawCircle(Offset(size.width / 2, size.height / 1.9), 100, paint);

    //  eyes

    canvas.drawCircle(Offset(size.width / 2.2, size.height / 5.2), 8, paint2);

    canvas.drawCircle(Offset(size.width / 1.8, size.height / 5.2), 8, paint2);

    // buttons

    canvas.drawCircle(Offset(size.width / 2, size.height / 3.2), 8, paint2);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2.6), 8, paint2);
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 8, paint2);

    //  Nose Carrot

    canvas.drawLine(Offset(size.width / 2, size.height / 4.5),
        Offset(size.width / 2.2, size.height / 4.2), paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
