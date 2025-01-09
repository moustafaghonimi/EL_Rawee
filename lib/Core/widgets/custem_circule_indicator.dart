import 'package:elrawee/Core/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final double progress; // Progress value from 0.0 to 1.0
  final double textSize;
  final double w;
  final double h;
  const CustomCircularProgressIndicator({
    super.key,
    required this.progress,
    required this.textSize,
    required this.w,
    required this.h,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w, // Customize the size as needed
      height: h,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return CustomPaint(
            painter: _CircularProgressPainter(progress),
            size: constraints.biggest,
            child: Center(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "R", // The letter to display
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Customize text color
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CircularProgressPainter extends CustomPainter {
  final double progress;

  _CircularProgressPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = 8.0; // Thickness of the progress bar
    Paint backgroundPaint = Paint()
      ..color = Colors.grey.shade300
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Paint progressPaint = Paint()
      ..color = AppColor.primaryColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Draw the background circle
    double radius = (size.width - strokeWidth) / 2;
    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, backgroundPaint);

    // Draw the progress arc
    double startAngle =
        -90 * (3.141592653589793 / 180); // Start angle in radians
    double sweepAngle = 2 * 3.141592653589793 * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Repaint when the progress changes
  }
}
