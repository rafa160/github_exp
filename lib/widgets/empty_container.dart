import 'package:flutter/material.dart';

class EmptyContainer extends StatelessWidget {
  final String message;
  final Icon icon;

  const EmptyContainer({Key key, this.message, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Icon(
          icon.icon,
          size: 200,
          color: Colors.deepPurple.shade100,
        ),
      ),
    );
  }
}
