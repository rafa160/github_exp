import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:github_exp/utils/strings.dart';

class UserCard extends StatelessWidget {
  final String image;
  final String bio;
  final String local;
  final String followers;
  final String repositoriesNumbers;
  final String stars;
  final VoidCallback onTap;

  const UserCard(
      {Key key,
      this.image,
      this.bio,
      this.local,
      this.followers,
      this.repositoriesNumbers,
      this.stars,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipOval(
                child: Image(
                  image: NetworkImage(image),
                  height:
                  MediaQuery.of(context).size.height * 0.1,
                  width:
                  MediaQuery.of(context).size.width * 0.2,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      bio,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${Strings.USER_CARD_LOCATION}$local',
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      '${Strings.USER_CARD_FOLLOWERS}$followers',
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      '${Strings.USER_CARD_REPOS}$repositoriesNumbers ${Strings.USER_CARD_STARS} $stars',
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
