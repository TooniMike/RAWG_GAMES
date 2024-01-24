import 'package:games_call/repository/models/all_games.dart';
import 'package:games_call/repository/models/genre.dart';
import 'package:games_call/repository/models/results.dart';
import 'package:games_call/repository/services/services.dart';

class GameRepository {
  final GameServices service;

  GameRepository({required this.service});

  Future<AllGames> getAllGames() async => service.getAllGames();

  Future<List<Genre>> getGenres() async => service.getGenres();
  Future<List<Results>> getGamesByCategory(int genreId) async =>
      service.getGamesByCategory(genreId);
}
