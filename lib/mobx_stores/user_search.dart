import 'package:github_exp/models/user.dart';
import 'package:github_exp/service/user_service.dart';
import 'package:mobx/mobx.dart';

part 'user_search.g.dart';

class UserSearch = _UserSearch with _$UserSearch;

abstract class _UserSearch with Store {

  final UserService _userService;

  _UserSearch(this._userService);

  @observable
  String query = '';

  @observable
  ObservableFuture<User> results = ObservableFuture.value(new User(login: null));

  @action
  void setQuery(String name){
    query = name;
  }

  @action
  void searchUser() {
    results = _userService.getUserByLogin(query).asObservable();
  }
}