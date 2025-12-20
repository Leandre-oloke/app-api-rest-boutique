class UtilisateurModel {
  final String name;
  final String username;
  final String email;
  final Map<String, dynamic> address;
  final int id;

// Constructeur pour la classe UtilisateurModel
  UtilisateurModel({
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.id,
  });

// Méthode factory pour créer une instance de UtilisateurModel à partir d'une Map
  factory UtilisateurModel.fromMap(Map<String, dynamic> json) {
    return UtilisateurModel(
      name: json['name'],
      username: json['username'],
      email: json['email'],
      address: json['address'],
      id: json['id'],
    );
  }
}