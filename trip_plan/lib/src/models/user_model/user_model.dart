class UserModel {
  final String uId;
  final String name;
  final String email;
  final String userName;

  UserModel({required this.name, required this.email, required this.uId,required this.userName});

  Map<String, dynamic> toJson() {
    return {'uId': uId, 'name': name, 'email': email,
    'username':userName};
  }

  UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json['name'], email: json['email'], uId: json['uId'],
    userName: json['username']);
  }
}
