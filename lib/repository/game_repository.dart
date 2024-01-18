import 'package:games_call/repository/models/genre.dart';
import 'package:games_call/repository/services/services.dart';

class GameRepository{
  final GameServices service;

  GameRepository(this.service);

  Future<List<Genre>> getGenres() async => service.getGenres();   
}