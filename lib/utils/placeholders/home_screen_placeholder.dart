import 'package:flutter/material.dart';

class HomeScreenPlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              color: Colors.transparent,
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 10,
              width: MediaQuery.of(context).size.width / 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                      begin: Alignment(-1, 0),
                      end: Alignment(-1, 0),
                      colors: [
                        Colors.black26,
                        Colors.black12,
                        Colors.black12
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
