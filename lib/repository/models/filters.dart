// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:games_call/repository/models/years.dart';

class Filters {
  List<Years>? years;
  Filters({
    this.years,
  });

    Filters.fromJson(Map<String, dynamic> json) {
    if (json['years'] != null) {
      years = <Years>[];
      json['years'].forEach((v) {
        years!.add(new Years.fromJson(v));
      });
    }
  }
}
