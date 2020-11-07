import 'package:flutter/material.dart';
import 'package:github_exp/utils/background_screen/background_two.dart';
import 'package:github_exp/utils/placeholders/home_screen_placeholder.dart';
import 'package:github_exp/utils/strings.dart';

class RepositoriesScreen extends StatefulWidget {
  @override
  _RepositoriesScreenState createState() => _RepositoriesScreenState();
}

class _RepositoriesScreenState extends State<RepositoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundTwo(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text( Strings.REPOSITORIES_TITLE, style: TextStyle(color: Colors.black),),
              centerTitle: true,
            ),
            HomeScreenPlaceHolder()
          ],
        ),
      ),
    );
  }
}
