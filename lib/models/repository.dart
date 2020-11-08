import 'package:github_exp/models/repository_item.dart';
import 'dart:convert';

Repository repositoriesFromJson(String str) => Repository.fromJson(json.decode(str));

String repositoriesToJson(Repository data) => json.encode(data.toJson());

class Repository {

  int totalCount;
  List<RepositoryItem> items;


  Repository({this.totalCount, this.items});

  factory Repository.fromJson(Map<String,dynamic> json){
    return Repository(
        totalCount: json['total_count'],
        items: List<RepositoryItem>.from(json['items'].map((e) => RepositoryItem.fromJson(e))),
    );
  }

  Map<String, dynamic> toJson() => {
    "total_count": totalCount,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}