// ignore_for_file: file_names

import 'package:hive_ce/hive.dart';

part 'broadcastAttribute.g.dart';

@HiveType(typeId: 0)
class BroadcastAttribute {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String genre;
  @HiveField(3)
  final String imagePath;
  @HiveField(4)
  final String description;
  @HiveField(5)
  bool isFavorite = false;
  @HiveField(6)
  bool isMyAnime = false;

  BroadcastAttribute({
    required this.id,
    required this.title,
    required this.genre,
    required this.imagePath,
    required this.description,
    required this.isFavorite,
    required this.isMyAnime,
  });

  // Für Provider
  BroadcastAttribute copyWith({
    int? id,
    String? title,
    String? genre,
    String? imagePath,
    String? description,
    bool? isFavorite,
    bool? isMyAnime,
  }) {
    return BroadcastAttribute(
      id: id ?? this.id,
      title: title ?? this.title,
      genre: genre ?? this.genre,
      imagePath: imagePath ?? this.imagePath,
      description: description ?? this.description,
      isFavorite: isFavorite ?? this.isFavorite,
      isMyAnime: isMyAnime ?? this.isMyAnime,
    );
  }
}
