class UserModel {
  String login;
  String senha;
  String nome;
  String cpf;
  String dataNascimento;
  String email;
  String? foto;
  
  UserModel({
    required this.login,
    required this.senha,
    required this.nome,
    required this.cpf,
    required this.dataNascimento,
    required this.email,
    this.foto,
  });

  //
  Map<String, dynamic> toJson() {
    return {
      "login": login,
      "senha": senha,
      "nome": nome,
      "cpf": cpf,
      "dataNascimento": dataNascimento,
      "email": email,
      "foto": foto,
    };     
  }
}