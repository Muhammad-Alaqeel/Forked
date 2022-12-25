import 'package:forked/Models/User.dart';


// i am not sure of how to handle arrays in factory, we need to check that ince we get the data

class Recipes {
  int? RecipeID;
  int? minutes;
  int? serving;
  int? calories;
  // int? likes;
  String? title_of_recipe;
  String? recipe_image;
  String? steps;
  String? ingredients;
  User? recipeCreator;

  // List<Recipes?>? forks;
  // Recipes? forkedFrom;

  // Recipe(
  //     {this.id,
  //     this.title,
  //     this.calories,
  //     this.forkedFrom,
  //     this.forks,
  //     this.image,
  //     this.ingredients,
  //     this.likes,
  //     this.minutes,
  //     this.recipeCreator,
  //     this.serving,
  //     this.steps});

  // factory Recipe.fronJson(Map json) {
  //   return Recipe(
  //     id: json['id'],
  //     title: json['title'],
  //     minutes: json["minutes"],
  //     serving: json["serving"],
  //     calories: json["calories"],
  //     likes: json["likes"],
  //     image: json["image"],
  //     steps: json["steps"],
  //     ingredients: json["ingredients"],
  //     recipeCreator: User.fronJson(json["recipeCreator"]),
  //     forks: List<Recipe>.from(json['forks'].map((x) => x)),
  //     forkedFrom: Recipe.fronJson(json["forkedFrom"]),
  //   );
  // }
}
