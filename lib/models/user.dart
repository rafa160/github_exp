class User {

  final int id;
  final String login;
  final String email;
  final String avatarUrl;
  final int followers;
  final int followings;
  final int publicRepo;
  final int starts;
  final String organizations;

  User({this.id, this.login,this.email, this.avatarUrl, this.followers, this.followings, this.publicRepo, this.starts, this.organizations});


  static User fromJson(Map<String,dynamic> json){
    return User(
      login: json['login'],
      email: json['email'],
      avatarUrl: json['avatar_url'],
      followers: json['followers'],
      followings: json['following'],
      publicRepo: json['public_repos'],
      organizations: json['organizations_url'],
    );
  }

}