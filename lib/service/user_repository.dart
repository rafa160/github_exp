
import 'package:dio/dio.dart';
import 'package:github_exp/models/repository.dart';
import 'package:github_exp/models/user.dart';
import 'package:github_exp/routes/github_api.dart';
import 'package:github_exp/service/user_service.dart';

class UserRepository implements UserService {
  Dio dio = new Dio();

  @override
  Future<User> getUsers(String name) async {
    try{
      final response = await dio.get(GitHubApi.searchUsers, queryParameters: {
        "q": name
      });
      return User.fromJson(response.data);
    } catch (e){
      print(e);
      rethrow;
    }
  }

  Future<User> getUserByLogin(String name) async {

    try{
      final response = await dio.get('${GitHubApi.users}${name}', options: Options(
        headers: {'Authorzation': GitHubApi.token}
      ));
      return User.fromJson(response.data);
    } catch (e){
      print(e);
      rethrow;
    }
  }

}