import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:github_exp/mobx_stores/search.dart';
import 'package:github_exp/models/user.dart';
import 'package:github_exp/service/repo_repository.dart';
import 'package:github_exp/utils/background_screen/background_one.dart';
import 'package:github_exp/utils/strings.dart';
import 'package:github_exp/widgets/empty_container.dart';
import 'package:github_exp/widgets/error_container.dart';
import 'package:github_exp/widgets/repository_card.dart';
import 'package:mobx/mobx.dart';

class UserDetailsRepositories extends StatefulWidget {
  final String reposUrl;

  const UserDetailsRepositories({Key key, this.reposUrl})
      : super(key: key);

  @override
  _UserDetailsRepositoriesState createState() =>
      _UserDetailsRepositoriesState();
}

class _UserDetailsRepositoriesState extends State<UserDetailsRepositories> {

  Search _search;
  RepositoryItem _repositoryItem;
  @override
  void initState() {
    super.initState();
    _search = Search(new RepositoryItem());
    _search.getUserRepositories(widget.reposUrl);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundOne(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text( Strings.REPOSITORIES_TITLE, style: TextStyle(color: Colors.black),),
              centerTitle: true,
            ),
            Expanded(
              child: Observer(
                builder: (_){
                  if(_search.results.status == FutureStatus.rejected) {
                    print(_search.results.error);
                    return ErrorContainer(
                      errorMessage: Strings.REPOSITORIES_ERROR,
                    );
                  } else if(_search.results.status == FutureStatus.pending){
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  final items = _search.results?.value?.items;
                  print(items.toString());
                  return ListView.builder(
                      itemCount: items?.length,
                    itemBuilder: (BuildContext context, int i){
                      var item = items[i];
                      return RepositoryCard(
                        repositoryName: item.name != null ? '${item.name}' : Strings.REPOSITORIES_CARD_NAME_EMPTY,
                        repositoryDescription: item.description != null ? '${item.description}' : Strings.REPOSITORIES_DESCRIPTION_TEXT_EMPTY,
                        stars: item.stargazersCount != null ? '${item.stargazersCount.toString()}' : Strings.REPOSITORIES_STARS_CARD_EMPTY,
                        userName: item.user.login != null ? '${item.user.login}' : Strings.REPOSITORIES_USER_CARD_EMPTY,
                        date: item.language != null ? '${item.language}' : Strings.REPOSITORIES_LANGUAGE_CARD_EMPTY,
                      );
                    }
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
