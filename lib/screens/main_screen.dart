import 'package:cricket_mazza_11/screens/account_screen.dart';
import 'package:cricket_mazza_11/screens/home_screen.dart';
import 'package:cricket_mazza_11/screens/live_screen_main.dart';
import 'package:cricket_mazza_11/screens/match_screen.dart';
import 'package:cricket_mazza_11/screens/settings_screen.dart';
import 'package:cricket_mazza_11/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  TabController? tab;
  @override
  void initState() {
   tab=TabController(length: 5, vsync: this);
   tab!.addListener(() {
     setState(() {
     });
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
    body: Column(
      children: [
        Expanded(
          child: Container(
            child: TabBarView(
              controller: tab,
              physics: NeverScrollableScrollPhysics(),
              children: const [
                HomeScreen(),
                MatchScreen(),
                LiveScreenMain(),
                SettingsScreen(),
                AccountScreen(),
              ],
            ),
          ),
        ),
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: TabBar(
            controller: tab,
            indicatorColor: Colors.transparent,
            tabs: [

              Container(
                height: 50,
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Icon(Icons.home,color:tab!.index==0? Colors.black:navIconGrey,),
                    SizedBox(height: 3,),
                    Text("Home",style: GoogleFonts.montserrat(fontSize: 9,
                        fontWeight: FontWeight.w600,
                        color: tab!.index==0?appBarColor:navIconGrey),)
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Icon(Icons.sports_football_outlined,color:tab!.index==1? Colors.black:navIconGrey,),
                    SizedBox(height: 3,),
                    Text("Match",style: GoogleFonts.montserrat(fontSize: 9,
                        fontWeight: FontWeight.w600,
                        color: tab!.index==1?appBarColor:navIconGrey),)
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Icon(Icons.live_tv,color:tab!.index==2? Colors.black:navIconGrey,),
                    SizedBox(height: 3,),
                    Text("Live",style: GoogleFonts.montserrat(fontSize: 9,
                        fontWeight: FontWeight.w600,
                        color: tab!.index==2?appBarColor:navIconGrey),)
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Icon(Icons.settings,color:tab!.index==3? Colors.black:navIconGrey,),
                    SizedBox(height: 3,),
                    Text("Settings",style: GoogleFonts.montserrat(fontSize: 9,
                        fontWeight: FontWeight.w600,
                        color: tab!.index==3?appBarColor:navIconGrey),)
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Icon(Icons.person,color:tab!.index==4? Colors.black:navIconGrey,),
                    SizedBox(height: 3,),
                    Text("Account",style: GoogleFonts.montserrat(fontSize: 9,
                        fontWeight: FontWeight.w600,
                        color: tab!.index==4?appBarColor:navIconGrey),)
                  ],
                ),
              ),

            ],
          ),
        )
      ],
    ),
    ));
  }
}
