class MovieDetailModel {
  final String id;
  final String title;
  final String movieImage;
  final String releaseDate;
  final String description;

  MovieDetailModel({
    required this.id,
    required this.title,
    required this.movieImage,
    required this.releaseDate,
    required this.description,
  });

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailModel(
      id: json['id'].toString(),
      title: json['title'] ?? '',
      movieImage: json['poster_path'] ?? '',
      releaseDate: json['release_date'] ?? '',
      description: json['overview'] ?? '',
    );
  }
}
