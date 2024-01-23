// ignore_for_file: public_member_api_docs, sort_constructors_first
class Ratings {
  int? id;
  String? title;
  int? count;
  double? percent;
  
  Ratings({
    this.id,
    this.title,
    this.count,
    this.percent,
  });

    Ratings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    count = json['count'];
    percent = json['percent'];
  }
}
