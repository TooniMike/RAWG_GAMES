import 'package:games_call/repository/models/added_by_status.dart';
import 'package:games_call/repository/models/genre.dart';
import 'package:games_call/repository/models/parent_platforms.dart';
import 'package:games_call/repository/models/platforms.dart';
import 'package:games_call/repository/models/ratings.dart';
import 'package:games_call/repository/models/short_screenshots.dart';
import 'package:games_call/repository/models/stores.dart';
import 'package:games_call/repository/models/tags.dart';

class Results {
  int? id;
  String? slug;
  String? name;
  String? released;
  bool? tba;
  String? backgroundImage;
  double? rating;
  int? ratingTop;
  List<Ratings>? ratings;
  int? ratingsCount;
  int? reviewsTextCount;
  int? added;
  AddedByStatus? addedByStatus;
  int? metacritic;
  int? playtimes;
  int? suggestionsCount;
  String? updated;
  dynamic userGame;
  int? reviewsCount;
  String? saturatedColor;
  String? dominantColor;
  List<Platforms>? platforms;
  List<ParentPlatforms>? parentPlatforms;
  List<Genre>? genres;
  List<Stores>? stores;
  String? clip;
  List<Tags>? tags;
  ParentPlatforms? esrbRating;
  List<ShortScreenshots>? shortScreenshots;



  Results({
    required this.id,
    required this.slug,
    required this.name,
    this.released,
    this.tba,
    required this.backgroundImage,
    this.rating,
    this.ratingTop,
    this.ratings,
    this.ratingsCount,
    this.reviewsTextCount,
    this.added,
    this.addedByStatus,
    this.metacritic,
    this.playtimes,
    this.suggestionsCount,
    this.updated,
    required this.userGame,
    this.reviewsCount,
    this.saturatedColor,
    this.dominantColor,
    this.platforms,
    this.parentPlatforms,
    required this.genres,
    this.stores,
    required this.clip,
    this.tags,
    this.esrbRating,
    this.shortScreenshots,
    // required this.gameCount,
    // this.image,
    // this.yearStart,
    // this.yearEnd,
    // required this.games,
  });

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    released = json['released'];
    tba = json['tba'];
    backgroundImage = json['background_image'];
    rating = json['rating'];
    ratingTop = json['rating_top'];
    if (json['ratings'] != null) {
      ratings = <Ratings>[];
      json['ratings'].forEach((v) {
        ratings!.add(Ratings.fromJson(v));
      });
    }
    ratingsCount = json['ratings_count'];
    reviewsTextCount = json['reviews_text_count'];
    added = json['added'];
    addedByStatus = json['added_by_status'] != null
        ? AddedByStatus.fromJson(json['added_by_status'])
        : null;
    metacritic = json['metacritic'];
    playtimes = json['playtime'];
    suggestionsCount = json['suggestions_count'];
    updated = json['updated'];
    userGame = json['user_game'];
    reviewsCount = json['reviews_count'];
    saturatedColor = json['saturated_color'];
    dominantColor = json['dominant_color'];
    if (json['platforms'] != null) {
      platforms = <Platforms>[];
      json['platforms'].forEach((v) {
        platforms!.add(Platforms.fromJson(v));
      });
    }
    if (json['parent_platforms'] != null) {
      parentPlatforms = <ParentPlatforms>[];
      json['parent_platforms'].forEach((v) {
        parentPlatforms!.add(ParentPlatforms.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      genres = <Genre>[];
      json['genres'].forEach((v) {
        genres!.add(Genre.fromJson(v));
      });
    }
    if (json['stores'] != null) {
      stores = <Stores>[];
      json['stores'].forEach((v) {
        stores!.add(Stores.fromJson(v));
      });
    }
    clip = json['clip'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
    esrbRating = json['esrb_rating'] != null
        ? ParentPlatforms.fromJson(json['esrb_rating'])
        : null;
    if (json['short_screenshots'] != null) {
      shortScreenshots = <ShortScreenshots>[];
      json['short_screenshots'].forEach((v) {
        shortScreenshots!.add(ShortScreenshots.fromJson(v));
      });
    }
  }
}
