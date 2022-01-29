import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
   Timer(Duration(seconds: 3),(){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>MainScreen()));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            width: w,
            height: h,
            decoration: BoxDecoration(
              color: Colors.white,
              image:DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/slash.jpg",)
              )
            ),
          ),
          Container(
            width: w,
            height: h,
            color: Colors.white70,
          ),
          Positioned(
              top: h/2,
              right:20,
              left: 20,
              child:Column(
            children: [
              Text("Cricket",style: GoogleFonts.montserrat(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w400),),
              Text("Mazza 11",style: GoogleFonts.montserrat(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w400)),
            ],
          )),
          Positioned(
              bottom: 30,
              right: 0,
              left: 0,
              child:SpinKitCircle(
            color: Colors.black,
            size: 60.0,
          )),
        ],
      ),
    );
  }
}
