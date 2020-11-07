import 'package:flutter/material.dart';
import 'package:github_exp/utils/background_screen/background_one.dart';
import 'package:github_exp/utils/placeholders/home_screen_placeholder.dart';
import 'package:github_exp/utils/strings.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundOne(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text(Strings.APP_NAME, style: TextStyle(color: Colors.black),),
              centerTitle: true,
            ),
            HomeScreenPlaceHolder()
          ],
        ),
      ),
    );
  }

}



