class TipoMaterial {
  late int id;
  late String nome;
  late int nivel;

  TipoMaterial({
    required this.id,
    required this.nome,
    required this.nivel,
  });

  factory TipoMaterial.fromJson(Map<String, dynamic> json) {
    return TipoMaterial(
      id: json['id'],
      nome: json['nome'],
      nivel: json['nivel'],
    );
  }
}
