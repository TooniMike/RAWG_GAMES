import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:games_call/repository/models/all_games.dart';
import 'package:games_call/repository/models/genre.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import '../models/result_error.dart';

class GameServices {
  final String baseUrl;
  final Client _httpClient;

  GameServices({
    this.baseUrl = 'https://api.rawg.io/api',
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  Uri getUrl({
    required String url,
  }) {
    final queryParameters = <String, String>{
      'key': dotenv.get('GAMES_API_KEY')
    };
    return Uri.parse('$baseUrl/$url').replace(queryParameters: queryParameters);
  }

  Future<List<Genre>> getGenres() async {
    final response = await _httpClient.get(getUrl(url: 'genres'));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        return List<Genre>.from(
          json.decode(response.body)['results'].map(
                (data) => Genre.fromJson(data),
              ),
        );
      } else {
        throw ErrorEmptyResponse();
      }
    } else {
      throw ErrorGettingGames('Error getting genres');
    }
  }

  Future<AllGames> getAllGames() async {
    final response = await _httpClient.get(getUrl(url: 'games'));
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        return AllGames.fromJson(
          json.decode(response.body),
        );
      } else {
        throw ErrorEmptyResponse();
      }
    } else {
      throw ErrorGettingGames('Error getting games');
    }
  }
}
