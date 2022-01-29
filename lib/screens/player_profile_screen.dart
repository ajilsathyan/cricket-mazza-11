import 'package:cricket_mazza_11/clippers/profile_clipper.dart';
import 'package:cricket_mazza_11/clippers/profile_clipper_2.dart';
import 'package:cricket_mazza_11/styles/colors.dart';
import 'package:cricket_mazza_11/styles/font_styles.dart';
import 'package:cricket_mazza_11/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animation_wrappers/animation_wrappers.dart';

class PlayerProfileScreen extends StatelessWidget {
  const PlayerProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h=MediaQuery.of(context).size.height;
    var w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadedSlideAnimation(
        child: Container(
          width: w,
          height: h,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: ProfileClipper1(),
                    child: Container(
                      width: w,
                      height: 365,
                     decoration: const BoxDecoration(
                       gradient: LinearGradient(
                         begin: Alignment.topLeft,
                         end: Alignment.bottomRight,
                         colors: [
                           Color(0xFF012E83),
                           Color(0xFF0645A4),
                           Color(0xFF3886DB),
                           Color(0xFF2774CF),
                           Color(0xFF125CBB),
                           Color(0xFF06419D),
                         ]
                       )
                     ),
                    ),
                  ),
                  ClipPath(
                    clipper: ProfileClipper2(),
                    child: Container(
                      width: w,
                      height: 365,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xFF094AAB),
                                Color(0xFF1D6AC6),
                                Color(0xFF1E6CC9),
                                Color(0xFF2976D2),
                                Color(0xFF1E6DC9),
                                Color(0xFF1E6DC9),
                                Color(0xFF0A4FAE),
                                Color(0xFF0744A1),
                                Color(0xFF043B96),
                                Color(0xFF023993),
                              ]
                          )
                      ),
                    ),
                  ),
                  customAppBar(title: "Player Profile", isHome: false,isColorShow: false,context: context),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Container(
                    height: 240,
                    width: 220,
                    child: Image.asset("assets/images/dhoni.jpg",fit:BoxFit.fill),
                  )),
                  Positioned(
                      right: 10,
                      top: 160,
                      child:Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("MS Dhoni",style: GoogleFonts.montserrat(
                              color: Colors.white,fontSize: 18
                            ),),
                            SizedBox(width: 10,),
                            Text("(Batsman)",style: GoogleFonts.montserrat(
                                color: Colors.white,fontSize: 10
                            ),),
                          ],
                        ),
                        SizedBox(height:5,),
                        Text("TEAM INDIA",style: GoogleFonts.montserrat(
                            color: Colors.white,fontSize: 12,fontWeight: FontWeight.w300
                        ),),

                        SizedBox(height:40,),
                        Container(
                          width: 150,
                          height: 25,
                          child: Row(
                            children: [
                              Text("Bating",style: GoogleFonts.montserrat(
                                  color: Colors.white,fontSize: 14
                              ),),
                              Spacer(),
                              Text("80%",style: GoogleFonts.montserrat(
                                  color: Colors.white,fontSize: 14
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 20,
                          child: Row(
                            children: [
                              Spacer(),
                              Container(
                                width: 145,
                                height: 5,
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 110,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                    )
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white54
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        SizedBox(height:10,),
                        Container(
                          width: 150,
                          height: 25,
                          child: Row(
                            children: [
                              Text("WC",style: GoogleFonts.montserrat(
                                  color: Colors.white,fontSize: 14
                              ),),
                              Spacer(),
                              Text("90%",style: GoogleFonts.montserrat(
                                  color: Colors.white,fontSize: 14
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 20,
                          child: Row(
                            children: [
                              Spacer(),
                              Container(
                                width: 145,
                                height: 5,
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: 130,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                      )
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white54
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ))

                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                width: w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("PROBABILITY",style: GoogleFonts.montserrat(color: grey),),
                            SizedBox(height: 10,),
                            Text("72%",style: GoogleFonts.montserrat(color:Colors.black,fontWeight: FontWeight.w500),),

                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text("CREDITS",style: GoogleFonts.montserrat(color: grey),),
                            SizedBox(height: 10,),
                            Text("8.5",style: GoogleFonts.montserrat(color:Colors.black,fontWeight: FontWeight.w500),),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text("TOTAL POINTS",style: GoogleFonts.montserrat(color: grey),),
                            SizedBox(height: 10,),
                            Text("82",style: GoogleFonts.montserrat(color:Colors.black,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8,),
                    SizedBox(width: w,
                    child: Divider(color:Colors.grey[300],thickness: 1.5,),
                    ),
                    SizedBox(height: 15,),
                    Text("Series Fantacy Stats",style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,color: Colors.black),),
                    SizedBox(height: 10,),

                    Stack(
                      children: [
                        Container(
                          height: 344,
                          width: w,
                          child: Column(
                            children: [
                              Container(
                                width: w,
                                height: 43,
                                decoration:const BoxDecoration(
                                    color: appBarColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      topLeft: Radius.circular(10),
                                    )
                                ),
                              ),
                              Container(
                                width: w,
                                height: 43, color: Colors.grey[200],
                              ),
                              Container(
                                width: w,
                                height: 43,
                                color: Colors.white,
                              ),
                              Container(
                                width: w,
                                height: 43, color: Colors.grey[200],
                              ),
                              Container(
                                width: w,
                                height: 43,
                                color: Colors.white,
                              ),
                              Container(
                                width: w,
                                height: 43, color: Colors.grey[200],
                              ),
                              Container(
                                width: w,
                                height: 43,
                                color: Colors.white,
                              ),
                              Container(
                                width: w,
                                height: 43,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200]!,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: w,
                          height: 344,
                          child: Row(
                            children: [
                              SizedBox(width: 15,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10,),
                                  Text("Match",style: commonStyle(Colors.white)),
                                  SizedBox(height: 30,),
                                  Text("IND VS PAK",style: commonStyle(Colors.black)),
                                  SizedBox(height: 25,),
                                  Text("IND VS PAK",style: commonStyle(Colors.black)),
                                  SizedBox(height: 25,),
                                  Text("IND VS PAK",style: commonStyle(Colors.black)),
                                  SizedBox(height: 25,),
                                  Text("IND VS PAK",style: commonStyle(Colors.black),),
                                  SizedBox(height: 29,),
                                  Text("IND VS PAK",style: commonStyle(Colors.black)),
                                  SizedBox(height: 26,),
                                  Text("IND VS PAK",style: commonStyle(Colors.black)),
                                  SizedBox(height: 25,),
                                  Text("IND VS PAK",style: commonStyle(Colors.black)),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10,),
                                  Text("Points",style: commonStyle(Colors.white)),
                                  SizedBox(height: 30,),
                                  Text("10",style: commonStyle(Colors.black)),
                                  SizedBox(height: 25,),
                                  Text("10",style: commonStyle(Colors.black)),
                                  SizedBox(height: 25,),
                                  Text("10",style: commonStyle(Colors.black)),
                                  SizedBox(height: 25,),
                                  Text("10",style:  commonStyle(Colors.black)),
                                  SizedBox(height: 29,),
                                  Text("10",style: commonStyle(Colors.black)),
                                  SizedBox(height: 26,),
                                  Text("10",style: commonStyle(Colors.black)),
                                  SizedBox(height: 25,),
                                  Text("10",style:  commonStyle(Colors.black)),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10,),
                                  Text("Selected By",style: commonStyle(Colors.white)),
                                  SizedBox(height: 30,),
                                  Text("13.85%",style: commonStyle(Colors.black)),
                                  SizedBox(height: 25,),
                                  Text("13.85%",style: commonStyle(Colors.black),),
                                  SizedBox(height: 25,),
                                  Text("13.85%",style: commonStyle(Colors.black)),
                                  SizedBox(height: 25,),
                                  Text("13.85%",style:  commonStyle(Colors.black)),
                                  SizedBox(height: 29,),
                                  Text("13.85%",style: commonStyle(Colors.black)),
                                  SizedBox(height: 26,),
                                  Text("13.85%",style: commonStyle(Colors.black) ),
                                  SizedBox(height: 25,),
                                  Text("13.85%",style:  commonStyle(Colors.black),),
                                ],
                              ),
                              SizedBox(width: 15,)
                            ],
                          ),
                        )
                      ],
                    ),


                  ],
                ),
              ),)


            ],
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}


