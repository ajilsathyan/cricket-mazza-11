import 'package:flutter/material.dart';

class Clipper1 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 20);
    path.lineTo(0, size.height);
    path.lineTo(100, size.height);
    path.quadraticBezierTo(60, 50, 0, 20);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}