import 'package:games_call/repository/models/filters.dart';
import 'package:games_call/repository/models/results.dart';

class AllGames {
  int? count;
  String? next;
  dynamic previous;
  late List<Results> results;
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
    this.seoTitle,
    this.seoDescription,
    this.seoKeywords,
    this.seoH1,
    this.noIndex,
    this.noFollow,
    this.description,
    this.filters,
    this.nofollowCollections,
  });

  static AllGames empty = AllGames(
      count: 0,
      next: '',
      previous: 0,
      results: [],
      seoTitle: '',
      seoDescription: '',
      seoKeywords: '',
      seoH1: '',
      noIndex: false,
      noFollow: false,
      description: '',
      filters: Filters(),
      nofollowCollections: []);

  AllGames.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    results = <Results>[];
    json['results'].forEach((v) {
      results.add(Results.fromJson(v));
    });

    seoTitle = json['seo_title'];
    seoDescription = json['seo_description'];
    seoKeywords = json['seo_keywords'];
    seoH1 = json['seo_h1'];
    noIndex = json['noindex'];
    noFollow = json['nofollow'];
    description = json['description'];
    filters =
        json['filters'] != null ? Filters.fromJson(json['filters']) : null;
        
    nofollowCollections = json['nofollow_collections'].cast<String>();

    // (json['results'] as List).forEach((e) {
    //   results!.add(Results.fromJson(e));
    // });
  }
}
