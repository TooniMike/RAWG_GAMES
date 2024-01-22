// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:games_call/repository/models/games.dart';

class Results {
  int? id;
  String? name;
  String? slug;
  int? gameCount;
  String? imageBackground;
  dynamic image;
  int? yearStart;
  int? yearEnd;
  List<Games>? games;

  Results({
    required this.id,
    required this.name,
    required this.slug,
    required this.gameCount,
    required this.imageBackground,
    this.image,
    this.yearStart,
    this.yearEnd,
    required this.games,
  });

  Results.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    gameCount = json['game_count'];
    imageBackground = json['image_background'];
    image = json['image'];
    yearStart = json['year_start'];
    yearEnd = json['year_end'];
    games = json['games'];
    
  }
}
