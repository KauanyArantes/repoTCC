class Video {
  late String video;
  late String description;

  Video({
    required this.video,
    required this.description,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      video: json['vídeo'],
      description: json['description'],
    );
  }
}
