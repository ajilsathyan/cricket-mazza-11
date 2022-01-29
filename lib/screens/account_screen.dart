import 'package:cricket_mazza_11/widgets/appBar.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(title: "Account", isHome: false,isColorShow: true,context: context),
      body: Center(
        child: Text("Account"),
      ),
    );
  }
}
