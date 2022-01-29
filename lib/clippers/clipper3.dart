
import 'package:flutter/material.dart';

class Clipper3 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(100, 70, 130, size.height);
    path.lineTo(200, size.height);
    path.quadraticBezierTo(130, 70, 100, 0);
    path.quadraticBezierTo(size.width*.35, size.height/2, 220, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(220, 70, 210, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}