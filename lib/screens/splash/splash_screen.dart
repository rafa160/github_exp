import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:github_exp/utils/background_screen/background_one.dart';
import 'package:github_exp/utils/background_screen/background_two.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundTwo(
      child:  Center(
          child: SvgPicture.asset('assets/githublog.svg', height: 150,),
        ),
    );
  }
}
