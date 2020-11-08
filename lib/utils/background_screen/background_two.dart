import 'package:flutter/material.dart';

class BackgroundTwo extends StatelessWidget {
  final Widget child;

  const BackgroundTwo({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white12,
      height:size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/main_top.png',width: size.width * 0.4,),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset('assets/main_bottom.png',width: size.width * 0.2,),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset('assets/login_bottom.png',width: size.width * 0.4,),
          ),
          child
        ],
      ),
    );
  }
}
