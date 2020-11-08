import 'package:github_exp/models/repository.dart';
import 'package:github_exp/models/user.dart';
import 'package:github_exp/service/service.dart';
import 'package:github_exp/service/user_service.dart';

import 'package:mobx/mobx.dart';

part 'search.g.dart';

class Search = _Search with _$Search;

abstract class _Search with Store {

  final Service _repositoryItem;

  _Search(this._repositoryItem);

  @observable
  String query = '';

  @observable
  ObservableFuture<Repository> results = ObservableFuture.value(new Repository(items: []));

  @action
  void setQuery(String name){
    query = name;
  }

  @action
  void searchRepository() {
    results = _repositoryItem.getRepositories(query).asObservable();
  }
}