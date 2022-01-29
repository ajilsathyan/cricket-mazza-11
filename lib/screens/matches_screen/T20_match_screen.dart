import 'package:cricket_mazza_11/clippers/clipper1.dart';
import 'package:cricket_mazza_11/clippers/clipper2.dart';
import 'package:cricket_mazza_11/clippers/clipper3.dart';
import 'package:cricket_mazza_11/clippers/clipper4.dart';
import 'package:cricket_mazza_11/models/matches_model.dart';
import 'package:cricket_mazza_11/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:google_fonts/google_fonts.dart';

class T20MatchScreen extends StatelessWidget {
  const T20MatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w=MediaQuery.of(context).size.width;
    return Container(
      width: w,
      child:ListView.builder(
          itemCount: twenty20_list.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context,i){
            return FadedScaleAnimation(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Stack(
                  children: [
                    Container(
                      width:w,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),

                    ClipPath(
                      clipper: Clipper2(),
                      child: Container(
                        width:w,
                        height: 125,
                        decoration: BoxDecoration(
                          gradient:const LinearGradient(
                            colors:  [
                              Color(0xFFFEFEFE),
                              Color(0xFFFDFDFD),
                              Color(0xFFF3F7F7),
                              Color(0xFFEBEFF2),
                              Color(0xFFE6EAED),
                              Color(0xFFE3E6E9),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,

                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: Clipper3(),
                      child: Container(
                        width:w,
                        height: 125,
                        decoration: BoxDecoration(
                          gradient:const LinearGradient(
                            colors:  [
                              Color(0xFFFBFAFC),
                              Color(0xFFF4F8F8),
                              Color(0xFFF1F5F6),
                              Color(0xFFECF0F3),
                              Color(0xFFDFE4E7),
                              Color(0xFFDBDFF3),
                              Color(0xFFDFF4E7),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,

                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: Clipper4(),
                      child: Container(
                        width:w,
                        height: 125,
                        decoration: BoxDecoration(
                          gradient:const LinearGradient(
                            colors:  [
                              Color(0xFFDADFE3),
                              Color(0xFFDFE4E8),
                              Color(0xFFE5E8EC),
                              Color(0xFFE9EDF0),
                              Color(0xFFECF0F3),
                              Color(0xFFF5F9F9),
                              Color(0xFFFDFEFD),
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,

                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper: Clipper1(),
                      child: Container(
                        width:w,
                        height: 125,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          gradient:const LinearGradient(
                            colors:  [
                              Color(0xFFF0F2F6),
                              Color(0xFFEBECF0),
                              Color(0xFFE4E8EB),
                              Color(0xFFE3E7EA),
                              Color(0xFFE8EBEE),
                              Color(0xFFEAEBEF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,

                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Container(
                      width:w,
                      height: 125,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 10,),
                          Text(twenty20_list[i].matchName!,style: GoogleFonts.montserrat(fontSize: 15),),
                          Row(
                            children: [
                              SizedBox(width: 20,),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      image: AssetImage(twenty20_list[i].image1!)
                                      ,fit: BoxFit.fill,
                                    )
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 90,
                                height: 60,
                                child: Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Container(
                                      child: Image.asset(
                                        "assets/icons/vs.jpg",
                                        width: 25,
                                        height: 25,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      image: AssetImage(twenty20_list[i].image2!)
                                      ,fit: BoxFit.fill,
                                    )
                                ),
                              ),
                              SizedBox(width: 20,),

                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 20,
                            width: 185,
                            decoration: const BoxDecoration(
                                color: appBarColor,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10)
                                )
                            ),
                            child: Center(child: Text("Mon. 07:30 PM | 28 Nov. 2021",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 10),),),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            );
          }),
    );
  }
}
