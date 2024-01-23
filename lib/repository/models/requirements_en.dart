// ignore_for_file: public_member_api_docs, sort_constructors_first
class RequirementsEn {
  String? minimum;
  String? recommended;
  RequirementsEn({
    this.minimum,
    this.recommended,
  });

    RequirementsEn.fromJson(Map<String, dynamic> json) {
    minimum = json['minimum'];
    recommended = json['recommended'];
  }
}
