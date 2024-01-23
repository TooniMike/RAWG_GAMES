// ignore_for_file: public_member_api_docs, sort_constructors_first
class Years2 {
  int? year;
  int? count;
  bool? nofollow;
  Years2({
    this.year,
    this.count,
    this.nofollow,
  });

    Years2.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    count = json['count'];
    nofollow = json['nofollow'];
  }
}
