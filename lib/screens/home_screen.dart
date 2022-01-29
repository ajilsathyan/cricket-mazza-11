import 'package:cricket_mazza_11/models/featured_video_model.dart';
import 'package:cricket_mazza_11/styles/colors.dart';
import 'package:cricket_mazza_11/styles/font_styles.dart';
import 'package:cricket_mazza_11/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animation_wrappers/animation_wrappers.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBar(
        title: "Home",
        isHome: true,
        isColorShow: true,
          context: context
      ),
      backgroundColor: Colors.white,
      body: FadedSlideAnimation(
        child: Container(
          height: h,
          width: w,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [

              // Recent Matches
              Row(
                children: [
                  SizedBox(width: 15,),
                  Text(
                    "Recent Matches",
                    style: mainHeading(),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 160,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, i) {
                      return Container(
                        height: 140,
                        width: w *.9,
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10,),
                                Text(
                                  "3rd Match, ODI - Zimbabwe tour of ireland, 2021",
                                  style: GoogleFonts.montserrat(fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 70,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 15,),
                                      Column(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            child: Image.asset(
                                                "assets/icons/simbabwe_icon.png"),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("Zimbabwe",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600)),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "150/ 10",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("20.4 Ov.",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 12)),
                                          SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      SizedBox(
                                        width: 90,
                                        height: 90,
                                        child: Column(
                                          children: [
                                            SizedBox(height: 10,),
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
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "154/ 7",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "19.3 Ov.",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 12),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            child: Image.asset(
                                                "assets/icons/ireland.png"),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("Ireland",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600)),
                                        ],
                                      ),
                                      SizedBox(width: 15,),
                                      // SizedBox(width: 15,),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("IRE Won by 3 Wickets(DLS)",style: GoogleFonts.montserrat(
                                  color: red,

                                ),),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(height: 20,),

              // Top Stories
              Row(
                children: [
                  SizedBox(width: 15,),
                  Text(
                    "Top Stories",
                    style: mainHeading(),
                  ),
                  Spacer(),
                  Text("View More",style:viewMoreTextStyle(),),
                  SizedBox(width: 15),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Stack(
                  children: [
                    Container(
                        height: 170,
                      width: w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage("assets/images/champions.jpeg"),fit: BoxFit.fill,
                        ),

                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black26,
                              Colors.black45,
                              Colors.black54,
                              Colors.black87,
                              Colors.black87,
                              Colors.white24,
                              Colors.white12,
                            ],
                           begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )
                        ),
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height:10,),
                            Text("CSKm beat KKR in the IPL 2021",style: GoogleFonts.montserrat(color: Colors.white),),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),

              // Featured Videos
              SizedBox(height: 25,),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Text(
                    "Featured Videos",
                    style: mainHeading(),
                  ),
                  Spacer(),
                  Text("View More",style:viewMoreTextStyle(),),
                  SizedBox(width: 15),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                height: 250,
                width: w,
                padding: EdgeInsets.only(left: 20,),
                child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                    itemCount: featuredList.length,
                    itemBuilder:(context,i){
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: FadedScaleAnimation(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: InkWell(
                          onTap: (){

                          },
                          splashColor: appBarColor,focusColor: appBarColor,
                          borderRadius:BorderRadius.circular(5) ,
                          child: Container(
                            height: 250,
                            width: 140,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 140,
                                      child: Image.asset(featuredList[i].image!,fit: BoxFit.fill,),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 140,color: Colors.black38,
                                      child: Center(child: Icon(Icons.play_circle_filled_rounded,color: Colors.black,size: 30,),),
                                    ),

                                  ],
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(featuredList[i].title!,style: GoogleFonts.montserrat(fontSize: 12,
                                  fontWeight: FontWeight.w600),),
                                ),
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(featuredList[i].description!,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 7,
                                    style: GoogleFonts.montserrat(fontSize: 10,
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              )
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

