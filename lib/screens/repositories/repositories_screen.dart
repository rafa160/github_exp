import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:github_exp/mobx_stores/search.dart';
import 'package:github_exp/service/repo_repository.dart';
import 'package:github_exp/utils/background_screen/background_two.dart';
import 'package:github_exp/widgets/empty_container.dart';
import 'package:github_exp/widgets/error_container.dart';
import 'package:github_exp/widgets/repository_card.dart';
import 'package:github_exp/utils/strings.dart';
import 'package:mobx/mobx.dart';

class RepositoriesScreen extends StatefulWidget {
  @override
  _RepositoriesScreenState createState() => _RepositoriesScreenState();
}

class _RepositoriesScreenState extends State<RepositoriesScreen> {
  Search _search;

  @override
  void initState() {
    _search = Search(new RepositoryItem());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundTwo(
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                Strings.REPOSITORIES_TITLE,
                style: TextStyle(color: Colors.black),
              ),
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
                  onChanged: _search.setQuery,
                  onSubmitted: (s) => _search.searchRepository(),
                  decoration: InputDecoration(
                      icon: Icon(Icons.search, color: Colors.deepPurple,),
                      hintText: Strings.REPOSITORIES_TEXT,
                      isDense: false,
                      border: InputBorder.none),
                ),
              ),
            ),
            Expanded(
                child: Observer(
                  builder: (_){
                    final items = _search.results?.value?.items;
                    if(_search.query.isEmpty){
                      return EmptyContainer(
                        icon: Icon(Icons.list),
                      );
                    } if(_search.results.status == FutureStatus.rejected) {
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
                    }if(items.isEmpty) {
                      return Container( child : Center(child: Text("Repositório não encontrado")));
                    }
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
            ),
          ],
        ),
      ),
    );
  }
}
