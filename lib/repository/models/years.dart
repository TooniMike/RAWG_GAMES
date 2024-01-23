// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:games_call/repository/models/years2.dart';

class Years {
  int? from;
  int? to;
  String? filter;
  int? decade;
  List<Years2>? years2;
  bool? nofollow;
  int? count;
  Years({
    this.from,
    this.to,
    this.filter,
    this.decade,
    this.years2,
    this.nofollow,
    this.count,
  });

    Years.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    filter = json['filter'];
    decade = json['decade'];
    if (json['years'] != null) {
      years2 = <Years2>[];
      json['years'].forEach((v) {
        years2!.add(new Years2.fromJson(v));
      });
    }
    nofollow = json['nofollow'];
    count = json['count'];
  }
}
