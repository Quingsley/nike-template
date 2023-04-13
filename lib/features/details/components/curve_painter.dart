import 'package:flutter/material.dart';
import 'dart:math' as math;

class CurvePainter extends CustomPainter {
  final BuildContext context;

  CurvePainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Theme.of(context).colorScheme.background
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // Create a gradient to apply to the paint object.
    final gradient = LinearGradient(
      colors: [
        const Color(0xFF000000).withOpacity(.1),
        const Color(0xFF2363F6),
      ],
      stops: const [0.0, 1.0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    // Set the shader of the paint object to the gradient.
    paint.shader = gradient.createShader(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: size.width,
        height: size.height,
      ),
    );

    final path = Path()
      ..moveTo(0, size.height / 2)
      ..arcToPoint(
        Offset(size.width, size.height / 2),
        radius: Radius.circular(size.width / 2),
        clockwise: false,
      );

    // Create a transformation matrix to rotate the curve in 3D space.
    final matrix = Matrix4.identity()
      ..setEntry(2, 3, 0.001)
      ..rotateX(60 * math.pi / 180);
    // ..rotateY(30 * math.pi / 180);

    canvas.transform(matrix.storage);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
