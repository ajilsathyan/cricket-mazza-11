import 'package:cricket_mazza_11/screens/live_screens/balls_screen.dart';
import 'package:cricket_mazza_11/screens/live_screens/info_screen.dart';
import 'package:cricket_mazza_11/screens/live_screens/live_screen.dart';
import 'package:cricket_mazza_11/screens/live_screens/points_screen.dart';
import 'package:cricket_mazza_11/screens/live_screens/score_card_screen.dart';
import 'package:cricket_mazza_11/styles/colors.dart';
import 'package:cricket_mazza_11/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveScreenMain extends StatefulWidget {
  const LiveScreenMain({Key? key}) : super(key: key);

  @override
  State<LiveScreenMain> createState() => _LiveScreenMainState();
}

class _LiveScreenMainState extends State<LiveScreenMain> with SingleTickerProviderStateMixin {
  TabController? tab;
  @override
  void initState() {
    // TODO: implement initState
    tab=TabController(length: 5, vsync: this);
    tab!.addListener(() {setState(() {

    });});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBar(title: "Live Line",isHome: false,isColorShow: true,context: context),
      body:FadedSlideAnimation(
        child: Container(
          height: h,
          width: w,
          child: Column(
            children: [
              Container(
                height: 50,
                width: w,
                color: Colors.white,
                child: TabBar(
                  controller: tab,
                  indicatorColor:appBarColor,
                  padding: EdgeInsets.all(0),
                  isScrollable: true,
                  tabs: [
                    Container(
                      width:40,
                      child: Center(child: Text("Live",style: GoogleFonts.montserrat(color: tab!.index==0?appBarColor:navIconGrey,
                          fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      width:100,
                      child: Center(child: Text("Score Card",style: GoogleFonts.montserrat(color: tab!.index==1?appBarColor:navIconGrey,
                          fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      width:60,
                      child: Center(child: Text("Points",style: GoogleFonts.montserrat(color: tab!.index==2?appBarColor:navIconGrey,
                          fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      width:40,
                      child: Center(child: Text("Info",style: GoogleFonts.montserrat(color: tab!.index==3?appBarColor:navIconGrey,
                          fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      width:40,
                      child: Center(child: Text("Balls",style: GoogleFonts.montserrat(color: tab!.index==4?appBarColor:navIconGrey,
                          fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container(
                width: w,
                color: Colors.white,
                child: TabBarView(
                  controller: tab,
                  children: const [
                    LiveScreen(),
                    ScoreCarScreen(),
                    PointsScreen(),
                    InfoScreen(),
                    BallsScreen()
                  ],
                ),))
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
