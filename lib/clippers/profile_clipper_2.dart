import 'package:flutter/material.dart';

class ProfileClipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.moveTo(size.width*.8, 0);
    path.quadraticBezierTo(size.width*.3, size.height*.5, size.width*.3,size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}