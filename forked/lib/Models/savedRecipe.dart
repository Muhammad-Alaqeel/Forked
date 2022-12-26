
// i am not sure of how to handle arrays in factory, we need to check that ince we get the data

class savedRecipe {

  String? userID;
  String? recipeID;
  

  savedRecipe(
      {this.recipeID,
     this.userID
     });

  factory savedRecipe.fronJson(Map json) {
    return savedRecipe(
      userID: json['userID'],
      recipeID: json['recipeID'],
    
    );
  }
}
