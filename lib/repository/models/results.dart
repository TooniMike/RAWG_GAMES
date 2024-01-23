import 'package:games_call/repository/models/added_by_status.dart';
import 'package:games_call/repository/models/esrb_rating.dart';
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
  int? rating;
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
  List<Genre>? genre;
  List<Stores>? stores;
  String? clip;
  List<Tags>? tags;
  EsrbRating? esrbRating;
  List<ShortScreenshots>? shortScreenshots;

  // int? gameCount;
  // dynamic image;
  // int? yearStart;
  // int? yearEnd;
  // List<Games>? games;


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
    required this.genre,
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

  Results.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];



    // gameCount = json['game_count'];
    // backgroundImage = json['image_background'];
    // image = json['image'];
    // yearStart = json['year_start'];
    // yearEnd = json['year_end'];
    // games = json['games'];
    
  }
}
