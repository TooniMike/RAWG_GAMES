// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:games_call/repository/models/platforms.dart';
import 'package:games_call/repository/models/requirements_en.dart';

class AllPlatforms {
  Platforms? platforms;
  String? releasedAt;
  RequirementsEn? requirementsEn;
  RequirementsEn? requirementsRu;

  AllPlatforms({
    this.platforms,
    this.releasedAt,
    this.requirementsEn,
    required this.requirementsRu,
  });

    AllPlatforms.fromJson(Map<String, dynamic> json) {
    platforms = json['platform'] != null
        ? Platforms.fromJson(json['platform'])
        : null;
    releasedAt = json['released_at'];
    requirementsEn = json['requirements_en'] != null
        ? RequirementsEn.fromJson(json['requirements_en'])
        : null;
    requirementsRu = json['requirements_ru'] != null
        ? RequirementsEn.fromJson(json['requirements_ru'])
        : null;
  }
}
