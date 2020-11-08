import 'package:flutter/material.dart';

class ErrorContainer extends StatelessWidget {

  final String errorMessage;

  const ErrorContainer({Key key, this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          errorMessage,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
    );
  }
}
