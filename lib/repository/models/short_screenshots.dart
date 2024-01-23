// ignore_for_file: public_member_api_docs, sort_constructors_first
class ShortScreenshots {
  int? id;
  String? image;
  ShortScreenshots({
    this.id,
    this.image,
  });

    ShortScreenshots.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }
}
