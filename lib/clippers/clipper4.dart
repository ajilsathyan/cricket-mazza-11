import 'package:flutter/material.dart';

class Clipper4 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(210, 0);
    path.quadraticBezierTo(220, 70, size.width, size.height*.9);
    path.lineTo(size.width, 0);
    path.lineTo(210, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}