import 'package:flutter/material.dart';
import 'package:github_exp/screens/home/home_screen.dart';
import 'package:github_exp/screens/repositories/repositories_screen.dart';
import 'package:github_exp/screens/users/users_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}
PageController pageController;
class _RootScreenState extends State<RootScreen> {

  int _page = 0;

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void initState() {
    if (pageController == null) {
      pageController = PageController();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [
          HomeScreen(),
          RepositoriesScreen(),
          UsersScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 24.0,
                ),
                color: _page == 0
                    ? Colors.deepPurple
                    : Colors.black,
                onPressed: () {
                  pageController.jumpToPage(0);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.storage,
                  size: 24.0,
                ),
                color: _page == 1
                    ? Colors.deepPurple
                    : Colors.black,
                onPressed: () {
                  pageController.jumpToPage(1);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.supervised_user_circle,
                  size: 24.0,
                ),
                color: _page == 2
                    ? Colors.deepPurple
                    : Colors.black,
                onPressed: () {
                  pageController.jumpToPage(2);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
