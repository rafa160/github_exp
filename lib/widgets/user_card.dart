import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:github_exp/widgets/card_description.dart';

class UserCard extends StatelessWidget {
  final String image;
  final String orgs;
  final String local;
  final String followers;
  final String repositoriesNumbers;
  final String stars;

  const UserCard(
      {Key key,
      this.image,
      this.orgs,
      this.local,
      this.followers,
      this.repositoriesNumbers,
      this.stars})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4),
      child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Image(
                  image: NetworkImage(image),
                  height: 210,
                  width: 170,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: CardDescription(
                    title: orgs,
                    subtitle: local,
                    infoOne: followers,
                    infoTwo: repositoriesNumbers,
                    lastOne: stars,
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}
