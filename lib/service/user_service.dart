
import 'package:github_exp/models/user.dart';

abstract class UserService {

  Future<User> getUsers(String name);

  Future<User> getUserByLogin(String name);

}