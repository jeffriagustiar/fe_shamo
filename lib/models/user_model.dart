import 'dart:collection';

class UserModel {
  //? variable
  int? id;
  String? name;
  String? email;
  String? username;
  // late String profilePhotoUrl;
  String? token;

  //? contruktor
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    // required this.profilePhotoUrl,
    required this.token,
  });

  //? from json
  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    // profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }

  //? to json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      // 'profile_photo_url': profilePhotoUrl,
      'token': token,
    };
  }
}
