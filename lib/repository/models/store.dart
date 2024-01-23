// ignore_for_file: public_member_api_docs, sort_constructors_first
class Store {
  int? id;
  String? name;
  String? slug;
  String? domain;
  int? gamesCount;
  String? imageBackground;
  Store({
    this.id,
    this.name,
    this.slug,
    this.domain,
    this.gamesCount,
    this.imageBackground,
  });

    Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
    domain = json['domain'];
    gamesCount = json['games_count'];
    imageBackground = json['image_background'];
  }
}
