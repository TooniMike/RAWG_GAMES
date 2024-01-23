import 'package:games_call/repository/models/filters.dart';
import 'package:games_call/repository/models/results.dart';

class AllGames {
  int? count;
  String? next;
  dynamic previous;
  List<Results>? results;
  String? seoTitle;
  String? seoDescription;
  String? seoKeywords;
  String? seoH1;
  bool? noIndex;
  bool? noFollow;
  String? description;
  Filters? filters;
  List<String>? nofollowCollections;


  AllGames({
    this.count,
    this.next,
    this.previous,
    required this.results,
  });

  static AllGames empty = AllGames(
    count: 0,
    next: '',
    previous: 0,
    results: [],
  );

  AllGames.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = json['results'];
  }
}
