// ignore_for_file: public_member_api_docs, sort_constructors_first
class Games {
  int? id;
  String? slug;
  String? name;
  int? added;

  Games({
    required this.id,
    required this.slug,
    required this.name,
    required this.added,
  });

  Games.fromJson(Map<String, dynamic> json){
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    added = json['added'];
  }
}
