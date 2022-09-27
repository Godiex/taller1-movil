class User {
  final String usuario;
  final String clave;
  final String acceso;

  User({
    required this.usuario,
    required this.clave,
    required this.acceso,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      usuario: json['usuario'],
      clave: json['clave'],
      acceso: json['acceso'],
    );
  }
}
