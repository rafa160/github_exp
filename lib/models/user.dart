
class User {

   int id;
   String login;
   String email;
   String avatarUrl;
   String location;
   int followers;
   int followings;
   int publicRepo;
   int starts;
   String organizations;

  User({this.id, this.login,this.email, this.avatarUrl, this.followers, this.followings, this.publicRepo, this.starts, this.organizations,this.location});


  factory User.fromJson(Map<String,dynamic> json){
    return User(
      login: json['login'],
      email: json['email'],
      avatarUrl: json['avatar_url'],
      followers: json['followers'],
      followings: json['following'],
      publicRepo: json['public_repos'],
      organizations: json['organizations_url'],
      location: json['location']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'login': login,
    'email': email,
    'avatar_url': avatarUrl,
    'followers': followers,
    'following': followings,
    'public_repos': publicRepo,
    'organizations_url': organizations,
    'location': location,
  };

}