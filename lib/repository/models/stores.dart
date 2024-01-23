// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:games_call/repository/models/store.dart';

class Stores {
  int? id;
  Store? store;
  Stores({
    this.id,
    this.store,
  });

   Stores.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    store = json['store'] != null ? new Store.fromJson(json['store']) : null;
  }
}
