import 'package:flutter/material.dart';
import 'package:github_exp/utils/strings.dart';

class BackgroundTwo extends StatelessWidget {
  final Widget child;

  const BackgroundTwo({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white12,
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              Strings.BACKGROUND_IMAGE_TOP,
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              Strings.BACKGROUND_IMAGE_BOTTOM,
              width: size.width * 0.2,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              Strings.BACKGROUND_IMAGE_BOTTOM_TWO,
              width: size.width * 0.4,
            ),
          ),
          child
        ],
      ),
    );
  }
}
