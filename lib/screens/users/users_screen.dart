import 'package:flutter/material.dart';
import 'package:github_exp/utils/background_screen/background_one.dart';
import 'package:github_exp/utils/placeholders/home_screen_placeholder.dart';
import 'package:github_exp/utils/strings.dart';

class UsersScreen extends StatefulWidget {
  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundOne(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text( Strings.USERS_TITLE, style: TextStyle(color: Colors.black),),
              centerTitle: true,
            ),
            HomeScreenPlaceHolder(),
          ],
        ),
      ),
    );
  }
}
