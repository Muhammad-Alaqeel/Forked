
// i am not sure of how to handle arrays in factory, we need to check that ince we get the data

class likedRecipe {
  String? userID;
  String? recipeID;
  

  likedRecipe(
      {this.recipeID,
 
     this.userID
     });

  factory likedRecipe.fronJson(Map json) {
    return likedRecipe(
      userID: json['userID'],
      recipeID: json['recipeID'],
    
    );
  }
}
