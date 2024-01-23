// ignore_for_file: public_member_api_docs, sort_constructors_first
class ParentPlatforms {
  int? id;
  String? name;
  String? slug;
  ParentPlatforms({
    this.id,
    this.name,
    this.slug,
  });

    ParentPlatforms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    slug = json['slug'];
  }
}
