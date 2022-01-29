import 'package:cricket_mazza_11/widgets/appBar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(title: "Settings",isHome: false,isColorShow: true,context: context),
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}
