
// i am not sure of how to handle arrays in factory, we need to check that ince we get the data

class originalRecipe {
  String? recipeID;
  String? userID;
  String? imgPath;
  String? title;
  int? minutes;
  int? servings;
  int? calories;
  int? likes;
  String? ingredients;
  String? preperation;
  String? userProfileImage;
  String? username;

  originalRecipe(
      {this.recipeID,
      this.imgPath,
      this.title,
      this.calories,
      this.preperation,
      this.ingredients,
      this.likes,
      this.minutes,
      this.servings,
      this.userID,
      this.userProfileImage,
      this.username,
      
     });

  factory originalRecipe.fronJson(Map json) {
    return originalRecipe(
      userID: json['userID'],
      recipeID: json['recipeID'],
      userProfileImage: json['userProfileImage'],
      username: json['username'],
      title: json['title'],
      minutes: json["minutes"],
      servings: json["servings"],
      calories: json["calories"],
      likes: json["likes"],
      imgPath: json["imgPath"],
      preperation: json["preperation"],
      ingredients: json["ingredients"],
    );
  }
}
