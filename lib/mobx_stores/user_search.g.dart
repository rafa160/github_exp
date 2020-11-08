// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserSearch on _UserSearch, Store {
  final _$queryAtom = Atom(name: '_UserSearch.query');

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

  final _$resultsAtom = Atom(name: '_UserSearch.results');

  @override
  ObservableFuture<User> get results {
    _$resultsAtom.reportRead();
    return super.results;
  }

  @override
  set results(ObservableFuture<User> value) {
    _$resultsAtom.reportWrite(value, super.results, () {
      super.results = value;
    });
  }

  final _$_UserSearchActionController = ActionController(name: '_UserSearch');

  @override
  void setQuery(String name) {
    final _$actionInfo =
        _$_UserSearchActionController.startAction(name: '_UserSearch.setQuery');
    try {
      return super.setQuery(name);
    } finally {
      _$_UserSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  void searchUser() {
    final _$actionInfo = _$_UserSearchActionController.startAction(
        name: '_UserSearch.searchUser');
    try {
      return super.searchUser();
    } finally {
      _$_UserSearchActionController.endAction(_$actionInfo);
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
