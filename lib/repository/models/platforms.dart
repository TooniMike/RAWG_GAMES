// ignore_for_file: public_member_api_docs, sort_constructors_first
class Platforms {
  int? id;
  String? name;
  String? slug;
  dynamic image;
  int? yearEnd;
  int? yearStart;
  int? gamesCount;
  String? imageBackground;
  Platforms({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.yearEnd,
    this.yearStart,
    this.gamesCount,
    this.imageBackground,
  });

   Platforms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    yearEnd = json['year_end'];
    yearStart = json['year_start'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }
}
