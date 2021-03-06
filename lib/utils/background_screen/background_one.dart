import 'package:flutter/material.dart';
import 'package:github_exp/utils/strings.dart';

class BackgroundOne extends StatelessWidget {
  final Widget child;

  const BackgroundOne({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
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
              width: size.width * 0.3,
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
          child
        ],
      ),
    );
  }
}
