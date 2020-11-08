import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RepositoryCard extends StatelessWidget {
  final String repositoryName;
  final String repositoryDescription;
  final String stars;
  final String userName;
  final String date;

  const RepositoryCard(
      {Key key,
      this.repositoryName,
      this.repositoryDescription,
      this.stars,
      this.userName,
      this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  repositoryName,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5,right: 5),
              child: Text(
                  repositoryDescription,
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10,left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(stars),
                Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                ),
                Text(userName),
                Icon(
                  Icons.language,
                  color: Colors.deepPurple,
                ),
                Text(date),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
