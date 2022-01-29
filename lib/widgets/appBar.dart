
import 'package:google_fonts/google_fonts.dart';
import 'package:cricket_mazza_11/styles/colors.dart';
import 'package:flutter/material.dart';

PreferredSize customAppBar({required String title,required bool isHome,required bool isColorShow,required BuildContext context}){
  return PreferredSize(
      child: Container(
        color: isColorShow?appBarColor:Colors.transparent,
        child: Column(
          children: [
            SizedBox(
              height: 34,
            ),
            AppBar(
              backgroundColor: isColorShow?appBarColor:Colors.transparent,
              elevation: 0,
              leading: isHome?Icon(Icons.menu):IconButton(onPressed: (){
                 if(!isColorShow){
                   Navigator.pop(context);
                 }
              }, icon: Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
              centerTitle: true,
              title: Text(
                title,
                style:GoogleFonts.montserrat(),
              ),
              actions: [
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ],
        ),
      ),
      preferredSize: Size.fromHeight(90));
}


