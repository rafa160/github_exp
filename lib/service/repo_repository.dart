import 'package:dio/dio.dart';
import 'package:github_exp/models/repository.dart';

import 'package:github_exp/routes/github_api.dart';
import 'package:github_exp/service/service.dart';


class RepositoryItem implements Service {
  Dio dio = new Dio();

  @override
  Future<Repository> getRepositories(String name) async {
    try{
      final response = await dio.get(GitHubApi.repositories, queryParameters: {
        "q": name
      });
      return Repository.fromJson(response.data);
    } catch (e){
      print(e);
      rethrow;
    }
  }

  Future<Repository> getRepositoryByUser(String name) async {
    try{
      final response = await dio.get('${GitHubApi.users}${name}/repos', options: Options(
        headers: {'Authorzation': GitHubApi.token}
      ));
      return Repository.fromJson(response.data);
    }catch (e){
      print(e);
      rethrow;
    }
  }

}