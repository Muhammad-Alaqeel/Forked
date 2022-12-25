import 'package:forked/Models/Recipie.dart';

// i am not sure of how to handle arrays in factory, we need to check that ince we get the data

class User {
  int? userID;
  String? username;
  String? email;
  String? profile_Description;
  String? profile_Image;
  // Recipe? originalRecipes;
  // Recipe? forkedlRecipes;
  // Recipe? savedRecipes;
  // Recipe? likedRecipes;
  // List<User?>? following;
  // List<User?>? followers;

  // User(
  //     {this.id,
  //     this.username,
  //     this.email,
  //     this.profile,
  //     this.image,
  //     this.originalRecipes,
  //     this.forkedlRecipes,
  //     this.savedRecipes,
  //     this.likedRecipes,
  //     this.following,
  //     this.followers});

  // factory User.fronJson(Map json) {
  //   return User(
  //     id: json['id'],
  //     username: json['username'],
  //     email: json['email'],
  //     // recipes: Recipe.fronJson(json['recipes']),
  //     profile: json['profile'],
  //     image: json['image'],
  //     originalRecipes: Recipe.fronJson(json['recipes']),
  //     forkedlRecipes: Recipe.fronJson(json['recipes']),
  //     savedRecipes: Recipe.fronJson(json['recipes']),
  //     likedRecipes: Recipe.fronJson(json['recipes']),
  //     // 
  //     following: List<User>.from(json['following'].map((x) => x)),
  //     followers: List<User>.from(json['followers'].map((x) => x)),
  //   );
  // }
}
