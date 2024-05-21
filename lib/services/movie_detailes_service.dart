import 'package:filmapp/models/movie_detail_model.dart';

import 'dart:convert';

import 'package:http/http.dart' as http;

class MovieDetailService {
  static const String apiKey = 'c9856d0cb57c3f14bf75bdc6c063b8f3';
  static const String baseUrl = 'https://api.themoviedb.org/3';

  static Future<MovieDetailModel> fetchMovieDetails(String movieId) async {
    final response =
        await http.get(Uri.parse('$baseUrl/movie/$movieId?api_key=$apiKey'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return MovieDetailModel.fromJson(data);
    } else {
      throw Exception('Failed to fetch movie details');
    }
  }
}
