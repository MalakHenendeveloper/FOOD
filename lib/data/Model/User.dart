class UserModel {
  String? id;
  String? email;
  String? name;
  UserModel({this.email, this.id, this.name});
  UserModel.frojson(Map<String, dynamic> json)
      : this(email: json['email'], id: json['id'], name: json['name']);
  Map<String, dynamic> tojson() {
    return {'name': name, 'id': id, 'email': email};
  }
}
