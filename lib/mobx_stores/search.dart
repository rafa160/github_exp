import 'package:github_exp/models/repository.dart';
import 'package:github_exp/service/repository_service.dart';

import 'package:mobx/mobx.dart';

part 'search.g.dart';

class SearchRepository = _SearchRepository with _$SearchRepository;

abstract class _SearchRepository with Store {
  final Service _repositoryItem;

  _SearchRepository(this._repositoryItem);

  @observable
  String query = '';

  @observable
  ObservableFuture<Repository> results =
      ObservableFuture.value(new Repository(items: []));

  @action
  void setQuery(String name) {
    query = name;
  }

  @action
  void searchRepository() {
    results = _repositoryItem.getRepositories(query).asObservable();
  }

  @action
  void getUserRepositories(String url) {
    results = _repositoryItem.getReposUrl(url).asObservable();
  }
}
