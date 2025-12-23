// ignore_for_file: file_names

class BroadcastAttribute {
  final String id;
  final String title;
  final String genre;
  final String imagePath;
  final String description;
  bool isFavorite = false;
  bool isMyAnime = false;

  BroadcastAttribute({
    required this.id,
    required this.title,
    required this.genre,
    required this.imagePath,
    required this.description,
  });

  // Für Provider
  BroadcastAttribute copyWith({String? id, String? title, String? genre, String? imagePath, String? description}) {
    return BroadcastAttribute(
      id: id ?? this.id,
      title: title ?? this.title,
      genre: genre ?? this.genre,
      imagePath: imagePath ?? this.imagePath,
      description: description ?? this.description,
    );
  }
}
