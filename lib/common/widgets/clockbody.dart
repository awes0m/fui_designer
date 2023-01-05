import 'package:flutter/material.dart';

class ClockBody extends StatelessWidget {
  const ClockBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(children: [
        //back black circle
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 5,
                )
              ]),
        ),
        //legs and balls
        Container(
          width: double.infinity,
          child: CustomPaint(painter: BellsAndLegsPainter()),
        )
      ]),
    );
  }
}

//legs and Bells custom painter functions
class BellsAndLegsPainter extends CustomPainter {
  final Paint bellPaint;
  final Paint legPaint;

  BellsAndLegsPainter()
      : bellPaint = Paint(),
        legPaint = Paint() {
    bellPaint.color = const Color(0xff333333);
    bellPaint.style = PaintingStyle.fill;

    legPaint.color = const Color(0xff555555);
    legPaint.style = PaintingStyle.stroke;
    legPaint.strokeWidth = 10;
    legPaint.strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width / 2;
    canvas.save();
    canvas.translate(radius, radius);
    drawBellAndLeg(radius, canvas);
    canvas.restore();
  }

  @override
  bool shouldRepaint(BellsAndLegsPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BellsAndLegsPainter oldDelegate) => false;

  void drawBellAndLeg(double radius, Canvas canvas) {
    //bell
    Path path1 = Path();
    path1.moveTo(-55, -radius - 5);
    path1.lineTo(55, -radius - 5);
    path1.quadraticBezierTo(0, radius - 75, -55, -radius - 10);

    //leg
    Path path2 = Path();
    path2.addOval(Rect.fromCircle(center: Offset(0, -radius - 50), radius: 3));
    path2.moveTo(0, -radius - 50);
    path2.lineTo(0, radius + 20);

    //draw bell on top of leg
    canvas.drawPath(path2, legPaint);
    canvas.drawPath(path1, bellPaint);
  }
}
