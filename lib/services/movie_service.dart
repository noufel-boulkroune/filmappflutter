import 'dart:convert';

import 'package:filmapp/models/movie_model.dart';
import 'package:http/http.dart' as http;

class MovieService {
  static const String apiKey = 'c9856d0cb57c3f14bf75bdc6c063b8f3';
  static const String baseUrl = 'https://api.themoviedb.org/3';

  static Future<List<MovieModel>> fetchMovies() async {
    final response =
        await http.get(Uri.parse('$baseUrl/discover/movie?api_key=$apiKey'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['results'];
      print("-----" * 10);
      print(data.first);
      return data.map((json) => MovieModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch movies');
    }
  }
}
