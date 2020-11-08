import 'package:github_exp/models/repository.dart';

abstract class Service {

  Future<Repository> getRepositories(String name);

  Future<Repository> getReposUrl(String name);

}