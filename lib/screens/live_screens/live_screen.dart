import 'package:cricket_mazza_11/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  _LiveScreenState createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      height: h,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Row(
                children: [
                 const SizedBox(width: 15,),
                  Text("3rd Match, ODI",style: GoogleFonts.montserrat(),),
                 const Spacer(),
                  Card(
                    color: red,
                    elevation: .7,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10))
                    ),
                    child:  SizedBox(
                      width: 90,
                      height: 33,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.live_tv,color: Colors.black,size: 20,),
                          const SizedBox(width: 8,),
                          Text("LIVE",style: GoogleFonts.montserrat(color: Colors.white),)
                        ],
                      ),
                    ),

                  ),
                ],
              ),
            SizedBox(height: 15,),
            Container(
              height: 110,
              width: w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 30,),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width:50,
                          height: 50,
                          child: Image.asset("assets/icons/simbabwe_icon.png",fit: BoxFit.fill,),
                        ),
                        SizedBox(height: 10,),
                        Text("ZIMBABWE",style: GoogleFonts.montserrat(fontSize: 17),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("150/10",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
                            SizedBox(width: 10,),
                            Text("(20 Over)",style: GoogleFonts.montserrat(fontSize: 10),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 100,
                    width: 25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 25,
                          height: 25,
                          child: Image.asset("assets/icons/vs.jpg",fit: BoxFit.fill,),),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          width:50,
                          height: 50,
                          child: Image.asset("assets/icons/ireland.png",fit: BoxFit.fill,),
                        ),
                        SizedBox(height: 10,),
                        Text("IRELAND",style: GoogleFonts.montserrat(fontSize: 17),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("75/2",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
                            SizedBox(width: 10,),
                            Text("(10.5 Over)",style: GoogleFonts.montserrat(fontSize: 10),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 15,),
                Text("CRR : ",style: GoogleFonts.montserrat(),),
                Text("3.39",style: GoogleFonts.montserrat(fontWeight: FontWeight.w600)),
                Spacer(),
                Text("Over :",style: GoogleFonts.montserrat()),
                Circle(color: appBarColor,v: "6",),
                Circle(color: appBarColor,v: "4",),
                Circle(color: appBarColor,v: "1",),
                Circle(color: appBarColor,v: "--",),
                Circle(color: red,v: "w",),
                Spacer(),
                Row(
                  children: [
                    Text("Extra : ",style: GoogleFonts.montserrat()),
                    Text("5",style: GoogleFonts.montserrat(fontWeight: FontWeight.w600)),
                  ],
                ),
                SizedBox(width: 15,),
              ],
            ),

            SizedBox(height: 30,),
            Container(
              height: 42,
              width: w,
              decoration: BoxDecoration(
                color: appBarColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )
              ),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Text("BATSMAN",style: GoogleFonts.montserrat(color: Colors.white),),
                  Spacer(),
                  Container(
                    width: 185,
                    height: 42,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("R",style: GoogleFonts.montserrat(color: Colors.white),),
                        Text("B",style: GoogleFonts.montserrat(color: Colors.white),),
                        Text("4s",style: GoogleFonts.montserrat(color: Colors.white),),
                        Text("6s",style: GoogleFonts.montserrat(color: Colors.white),),
                        Text("SR",style: GoogleFonts.montserrat(color: Colors.white),),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
            ),
            Container(
              height: 40,
              width: w,
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  SizedBox(width: 13,height: 13,child: Image.asset("assets/icons/bat.png",fit: BoxFit.fill,),),
                  SizedBox(width: 3,),
                  Text("Paul Stirling",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 13),),
                  Text("*",style: GoogleFonts.montserrat(color: appBarColor,fontSize: 20),),
                  Spacer(),
                  Container(
                    width: 185,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("30",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("15",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("2",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("1",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("25.5",style: GoogleFonts.montserrat(color: Colors.black),),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
            ),
            SizedBox(
              width: w,
              child: Divider(height: 1,thickness: 1,color: Colors.grey,),
            ),
            Container(
              height: 40,
              width: w,
              child: Row(
                children: [
                  SizedBox(width: 32,),
                  // SizedBox(width: 13,height: 13,child: Image.asset("assets/icons/bat.png",fit: BoxFit.fill,),),
                  // SizedBox(width: 3,),
                  Text("Kevin O'Brien",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 13),),
                  // Text("*",style: GoogleFonts.montserrat(color: appBarColor,fontSize: 20),),
                  Spacer(),
                  Container(
                    width: 185,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("40",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("22",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("3",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("2",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("30.5",style: GoogleFonts.montserrat(color: Colors.black),),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
            ),

            SizedBox(height: 20,),
            Container(
              height: 42,
              width: w,
              decoration: BoxDecoration(
                  color: appBarColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  )
              ),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Text("BOWLER",style: GoogleFonts.montserrat(color: Colors.white),),
                  Spacer(),
                  Container(
                    width: 185,
                    height: 42,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("0",style: GoogleFonts.montserrat(color: Colors.white),),
                        Text("M",style: GoogleFonts.montserrat(color: Colors.white),),
                        Text("R",style: GoogleFonts.montserrat(color: Colors.white),),
                        Text("W",style: GoogleFonts.montserrat(color: Colors.white),),
                        Text("ECO",style: GoogleFonts.montserrat(color: Colors.white),),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
            ),
            Container(
              height: 40,
              width: w,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  SizedBox(width: 20,height: 20,child: Image.asset("assets/icons/ball.jpg",fit: BoxFit.fill,),),
                  SizedBox(width: 3,),
                  Text("Tendai Chatara",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 13),),
                  Spacer(),
                  Container(
                    width: 185,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("5",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("0",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("45",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("1",style: GoogleFonts.montserrat(color: Colors.black),),
                        Text("3.25",style: GoogleFonts.montserrat(color: Colors.black),),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
            ),

            SizedBox(height: 20,),
            Row(
              children: [
                Text("Partnership:",style: GoogleFonts.montserrat(),),
                SizedBox(width: 10,),
                Text("20(30)",style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),),
              ],
            ),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Last Wicket:",style: GoogleFonts.montserrat(),),
                SizedBox(width: 10,),
                Container(
                  height: 35,
                  width: w*.68,
                  child: Text("Andrew Balbirnie lbw Tendai Chatara in (10.5 Ov)",maxLines: 2,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),),
                ),
              ],
            ),

            SizedBox(height: 20,),
            Row(
              children: [
                Text("Recent Balls:",style: GoogleFonts.montserrat(),),
                SizedBox(width: 10,),
                Text("...| 0 0 0 2 0 1 | 6 4 2 2  1 2",style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),),
              ],
            )


          ],
        ),
      ),
    );
  }
}

class Circle extends StatelessWidget {
  String v;
  Color color;
   Circle({Key? key,required this.v,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(child: Text(v,style: GoogleFonts.montserrat(color: Colors.white,fontSize:10),),),
    );
  }
}

