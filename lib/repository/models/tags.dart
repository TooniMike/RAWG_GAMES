// ignore_for_file: public_member_api_docs, sort_constructors_first
class Tags {
  int? id;
  String? name;
  String? slug;
  String? language;
  int? gamesCount;
  String? imageBackground;
  Tags({
    this.id,
    this.name,
    this.slug,
    this.language,
    this.gamesCount,
    this.imageBackground,
  });

    Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    language = json['language'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }
}
