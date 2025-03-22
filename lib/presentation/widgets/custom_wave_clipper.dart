import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, 100); // Adjusted for the reverse effect
    path.quadraticBezierTo(
        size.width / 4, 1, size.width / 2, 0); // Inverted control points
    path.quadraticBezierTo(size.width - size.width / 4, 0, size.width,
        70); // Inverted control points
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
