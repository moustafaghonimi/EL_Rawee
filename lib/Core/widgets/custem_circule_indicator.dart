import 'dart:math';
import 'package:elrawee/Core/utils/app_color.dart';
import 'package:flutter/material.dart';

class AnimatedCircularProgressIndicator extends StatefulWidget {
  final double progress; // Progress value from 0.0 to 1.0
  final double w;
  final double h;
  final double strokeWidth; // Thickness of the progress bar

  const AnimatedCircularProgressIndicator({
    super.key,
    required this.progress,
    required this.w,
    required this.h,
    this.strokeWidth = 8.0,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedCircularProgressIndicatorState createState() =>
      _AnimatedCircularProgressIndicatorState();
}

class _AnimatedCircularProgressIndicatorState
    extends State<AnimatedCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller for scaling the text
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true); // Repeat animation back and forth

    // Define the scale animation for the letter
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.5).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.w,
      height: widget.h,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CustomPaint(
            painter: _RotatingCircularProgressPainter(
              progress: widget.progress,
              rotation: _controller.value * 2 * pi, // Full rotation
              strokeWidth: widget.strokeWidth,
            ),
            child: Center(
              child: Transform.scale(
                scale: _scaleAnimation.value, // Apply scaling to the letter
                child: Text(
                  "R",
                  style: TextStyle(
                    shadows: [
                      Shadow(
                          offset: Offset(0.4, 0.4),
                          color: AppColor.appBarColor),
                      Shadow(
                          offset: Offset(-0.6, -0.6),
                          color: AppColor.primaryColor),
                    ],

                    fontSize:
                        widget.h * 0.35, // Scale text based on widget size
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

class _RotatingCircularProgressPainter extends CustomPainter {
  final double progress;
  final double rotation;
  final double strokeWidth;

  _RotatingCircularProgressPainter({
    required this.progress,
    required this.rotation,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = Colors.grey.shade300
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    Paint progressPaint = Paint()
      ..color =
          AppColor.primaryColor // Change this to your desired progress color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double radius = (size.width - strokeWidth) / 2;
    Offset center = Offset(size.width / 2, size.height / 2);

    // Draw the background circle
    canvas.drawCircle(center, radius, backgroundPaint);

    // Draw the rotating progress arc
    double startAngle = rotation - pi / 2; // Start angle with rotation
    double sweepAngle = 2 * pi * progress;
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
    return true; // Repaint when progress or rotation changes
  }
}
