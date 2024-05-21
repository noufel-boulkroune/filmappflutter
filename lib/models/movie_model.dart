import 'dart:convert';

class MovieModel {
  final String id;
  final String? title;
  final String? movieImage;
  final String? releaseDate;
  final String? description;

  MovieModel({
    required this.id,
    required this.title,
    required this.movieImage,
    required this.releaseDate,
    required this.description,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'].toString() ?? '',
      title: json['title'] ?? '',
      movieImage: json['poster_path'] ?? '',
      releaseDate: json['release_date'] ?? '',
      description: json['overview'] ?? '',
    );
  }
}
