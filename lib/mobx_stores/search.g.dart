// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchRepository on _SearchRepository, Store {
  final _$queryAtom = Atom(name: '_SearchRepository.query');

  @override
  String get query {
    _$queryAtom.reportRead();
    return super.query;
  }

  @override
  set query(String value) {
    _$queryAtom.reportWrite(value, super.query, () {
      super.query = value;
    });
  }

  final _$resultsAtom = Atom(name: '_SearchRepository.results');

  @override
  ObservableFuture<Repository> get results {
    _$resultsAtom.reportRead();
    return super.results;
  }

  @override
  set results(ObservableFuture<Repository> value) {
    _$resultsAtom.reportWrite(value, super.results, () {
      super.results = value;
    });
  }

  final _$_SearchRepositoryActionController =
      ActionController(name: '_SearchRepository');

  @override
  void setQuery(String name) {
    final _$actionInfo = _$_SearchRepositoryActionController.startAction(
        name: '_SearchRepository.setQuery');
    try {
      return super.setQuery(name);
    } finally {
      _$_SearchRepositoryActionController.endAction(_$actionInfo);
    }
  }

  @override
  void searchRepository() {
    final _$actionInfo = _$_SearchRepositoryActionController.startAction(
        name: '_SearchRepository.searchRepository');
    try {
      return super.searchRepository();
    } finally {
      _$_SearchRepositoryActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getUserRepositories(String url) {
    final _$actionInfo = _$_SearchRepositoryActionController.startAction(
        name: '_SearchRepository.getUserRepositories');
    try {
      return super.getUserRepositories(url);
    } finally {
      _$_SearchRepositoryActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
query: ${query},
results: ${results}
    ''';
  }
}
