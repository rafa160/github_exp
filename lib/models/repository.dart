class Repository {

  final int id;
  final String name;
  final String description;
  final int stars;
  final String url;

  Repository({this.id, this.name, this.description, this.stars, this.url});

  @override
  List<Object> get props => [
    id,
    name,
    description,
    stars,
    url
  ];

  factory Repository.fromJson(Map<String,dynamic> json){
    return Repository(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      stars: json['stargazers_count'] as int,
      url: json['html_url'] as String,
    );
  }

  static List<Repository> fromJsonArray(dynamic jsonArray){
    List<Repository> repositories = new List<Repository>();
    for(var i = 0; i< jsonArray['items'].length; i++){
      repositories.add(Repository.fromJson(jsonArray['items'][i]));
    }
    return repositories;
  }
}