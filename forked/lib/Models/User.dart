import 'package:forked/Models/Recipie.dart';

class User {
  int? id;
  String? username;
  String? email;
  String? profile;
  String? image;
  Recipe? originalRecipes;
  Recipe? forkedlRecipes;
  Recipe? savedRecipes;
  Recipe? likedRecipes;
  User? following;
  User? followers;

  User(
      {this.id,
      this.username,
      this.email,
      this.profile,
      this.image,
      this.originalRecipes,
      this.forkedlRecipes,
      this.savedRecipes,
      this.likedRecipes,
      this.following,
      this.followers});

  factory User.fronJson(Map json) {
    return User(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      // recipes: Recipe.fronJson(json['recipes']),
      profile: json['profile'],
      image: json['image'],
      originalRecipes: Recipe.fronJson(json['recipes']),
      forkedlRecipes: Recipe.fronJson(json['recipes']),
      savedRecipes: Recipe.fronJson(json['recipes']),
      likedRecipes: Recipe.fronJson(json['recipes']),
      following: User.fronJson(json['following']),
      followers: User.fronJson(json['followers']),
    );
  }
}
