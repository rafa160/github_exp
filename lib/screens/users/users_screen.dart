import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:github_exp/mobx_stores/user_search.dart';
import 'package:github_exp/models/repository.dart';
import 'package:github_exp/models/user.dart';
import 'package:github_exp/screens/users/user_details_repositories.dart';
import 'package:github_exp/service/user_repository.dart';
import 'package:github_exp/utils/background_screen/background_one.dart';
import 'package:github_exp/utils/strings.dart';
import 'package:github_exp/widgets/empty_container.dart';
import 'package:github_exp/widgets/error_container.dart';
import 'package:github_exp/widgets/user_card.dart';
import 'package:mobx/mobx.dart';
import 'package:github_exp/mobx_stores/search.dart';
import 'package:github_exp/service/repo_repository.dart';

class UsersScreen extends StatefulWidget {
  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {

  UserSearch _userSearch;
  Search _search;
  @override
  void initState() {
    _userSearch = UserSearch(new UserRepository());
    _search = Search(new RepositoryItem());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundOne(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text( Strings.USERS_TITLE, style: TextStyle(color: Colors.black),),
              centerTitle: true,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple.withAlpha(100),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: TextField(
                  onChanged: _userSearch.setQuery,
                  onSubmitted: (s) => _userSearch.searchUser(),
                  decoration: InputDecoration(
                      icon: Icon(Icons.search, color: Colors.deepPurple,),
                      hintText: Strings.USERS_TEXT,
                      isDense: false,
                      border: InputBorder.none),
                ),
              ),
            ),
           Container(
             width: MediaQuery.of(context).size.width * 1 ,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Observer(
                builder: (_){
                  User user = _userSearch.results?.value;
                  if(_userSearch.query.isEmpty){
                    return EmptyContainer(
                      icon: Icon(Icons.person),
                    );
                  } if(_userSearch.results.status == FutureStatus.rejected){
                    return ErrorContainer(
                      errorMessage: Strings.USERS_ERROR,
                    );
                  } else if (_userSearch.results.status == FutureStatus.pending){
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  return UserCard(
                    image: user.login != null ? '${user.avatarUrl}' : Strings.USER_EMPTY_IMAGE,
                    orgs: user .organizations != null  ? user.organizations : Strings.USER_CARD_NAME_ORG_EMPTY,
                    local: user.location != null ? user.location : Strings.USER_LOCATION_TEXT_EMPTY,
                    repositoriesNumbers: user.publicRepo.toString() != null ? user.publicRepo.toString() : Strings.USER_NUMBER_CARD_EMPTY,
                    followers: user.followers.toString() != null ? user.followers.toString() : Strings.USER_NUMBER_CARD_EMPTY,
                    stars: user.starts.toString() != null ? user.starts.toString() : Strings.USER_NUMBER_CARD_EMPTY,
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> UserDetailsRepositories(reposUrl: user.reposUrl,)));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
