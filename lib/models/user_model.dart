class UserModel {
  final int? id;
  final String? name;
  final String? email;
  final String? role;
  final String? imageUrl;
  final String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.role,
    this.imageUrl,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      role: json['role'],
      imageUrl: json['imageUrl'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'role': role,
      'imageUrl': imageUrl,
      'token': token,
    };
  }
}
