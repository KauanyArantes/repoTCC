import 'tipo_material_model.dart';
import 'video_model.dart';

class Material {
  late String title;
  late String description;
  late String url;
  late String uploadDate;
  late TipoMaterial tipoMaterial;
  late Video video;

  Material({
    required this.title,
    required this.description,
    required this.url,
    required this.uploadDate,
    required this.tipoMaterial,
    required this.video,
  });

  factory Material.fromJson(Map<String, dynamic> json) {
    return Material(
      title: json['title'],
      description: json['description'],
      url: json['url'],
      uploadDate: json['uploadDate'],
      tipoMaterial: TipoMaterial.fromJson(json['tipo_material']),
      video: Video.fromJson(json['video']),
    );
  }
}
