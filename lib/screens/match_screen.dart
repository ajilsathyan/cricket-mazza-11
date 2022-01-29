import 'package:cricket_mazza_11/screens/matches_screen/All_matches_screen.dart';
import 'package:cricket_mazza_11/screens/matches_screen/ODI_match_Screen.dart';
import 'package:cricket_mazza_11/screens/matches_screen/T10_match_screen.dart';
import 'package:cricket_mazza_11/screens/matches_screen/Test_match_screen.dart';
import 'package:cricket_mazza_11/styles/colors.dart';
import 'package:cricket_mazza_11/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:google_fonts/google_fonts.dart';

import 'matches_screen/T20_match_screen.dart';

class MatchScreen extends StatefulWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  State<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends State<MatchScreen>
    with SingleTickerProviderStateMixin {
  TabController? tb;

  @override
  void initState() {
    tb = TabController(length: 5, vsync: this);
    tb!.addListener(() {
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBar(
        title: "Matches",
        isHome: false,
        isColorShow: true,
          context: context
      ),
      body: FadedSlideAnimation(
        child: Container(
          height: h,
          width: w,
          child: Column(
            children: [
              Container(
                height: 50,
                width: w,
                child: TabBar(
                  controller: tb,
                  indicatorColor:appBarColor,
                  isScrollable: true,
                  tabs: [
                    Container(
                      width:55,
                      child: Center(child: Text("All",style: GoogleFonts.montserrat(color: tb!.index==0?appBarColor:navIconGrey,
                          fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      width:55,
                      child: Center(child: Text("ODI",style: GoogleFonts.montserrat(color: tb!.index==1?appBarColor:navIconGrey,
                          fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      width:50,
                      child: Center(child: Text("T20",style: GoogleFonts.montserrat(color: tb!.index==2?appBarColor:navIconGrey,
                          fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      width:50,
                      child: Center(child: Text("Test",style: GoogleFonts.montserrat(color: tb!.index==3?appBarColor:navIconGrey,
                          fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                    Container(
                      width:55,
                      child: Center(child: Text("T10",style: GoogleFonts.montserrat(color: tb!.index==4?appBarColor:navIconGrey,
                          fontSize: 16,fontWeight: FontWeight.w500),)),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container(
                width: w,
                child: TabBarView(
                controller: tb,
                children: const [
                  AllMatchScreen(),
                  ODIMatchScreen(),
                  T20MatchScreen(),
                  TestMatchScreen(),
                  T10MatchScreen(),
                ],
              ),))
            ],
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      )
    );
  }
}
