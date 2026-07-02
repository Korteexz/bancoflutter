class ProductModel {
  final int? id;
  final String nome;
  final String descricao;
  final double preco;
  final String imagem;

  ProductModel({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagem,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"],
      nome: json["nome"],
      descricao: json["descricao"],
      preco: json["preco"].toDouble(),
      imagem: json["imagem"],
    );
  }
}