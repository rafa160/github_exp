import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_exp/screens/users/users_screen.dart';
import 'dart:async';
import 'package:github_exp/utils/background_screen/background_two.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future<void> _nextPage() async {
    Future.delayed(Duration(seconds: 5),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => UsersScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  Center(
          child: SvgPicture.asset('assets/githublog.svg', height: 150,),
        ),
    );
  }

  @override
  void initState() {
    super.initState();
    _nextPage();
  }
}
