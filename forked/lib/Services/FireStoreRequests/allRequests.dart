setNewUser({String? userID, String? email}) {
// create new document in the database with the id userID and email feild = to email
}

fetchUserData({String? userID}) {
// we will get all the user information from the data base and store it
// this is not just a request for user collection, we will do multiple queries
//1- user dara
//2- user's original recipies
//3- users forked recipe
// user liked recipe
// user saved recipe
// following
// followers
}

List<dynamic> searching({String? searchKey}) {
  // we will yuse the key to look through the user documents and recipe documents
  // and we will return = [USELlIST, RecipeList];

  return [];
}

List<dynamic> dailyInspiratoin() {
  // return recipies where likes > 3 in both forked and original recipe;
// list item details:
//recipe title, image, likes, profileIMG, user name, useID, recipeID, and parentID for forked;

// when creating the forked Widget make sure to pass an atribute (parentID) that tell wether the recipe is forked or not
  return ["forkedRecipeies", "originaalRecipe"];
}

List<dynamic> explorer() {
  // return recipies where likes < 3 in both forked and original recipe;
// list item details:
//recipe title, image, likes, profileIMG, user name, useID, recipeID, and parentID for forked;

// when creating the forked Widget make sure to pass an atribute (parentID) that tell wether the recipe is forked or not
  return ["forkedRecipeies", "originaalRecipe"];
}

List<dynamic> mostFollowed() {
  // return recipies where followers > 3;
  // profile image, name , followers;, id;
  return [];
}

List<dynamic> FollowingRecipies({List<String>? followingIDs}) {
  // we will use the list of a ll the users that we followe to aquire their recipies
  // by using the (in) ley word in the query
  //for testing we will limit the floowingIDs to only 10 users

  //recipe title, image, likes, profileIMG, user name, useID, recipeID, and parentID for forked;

// when creating the forked Widget make sure to pass an atribute (parentID) that tell wether the recipe is forked or not
  return ["forkedRecipeies", "originaalRecipe"];
}

// we could merge viewOriginalReicipe with view forked recipies method
List<dynamic> viewOriginalRecipe(
    {String? recipieDocId,
    int? displayedLikes,
    String? displayedProfileImageURL}) {
// no need for query for recipe because we have the id;
// simple get request to view recipe
// once we get the info of the recipe we will check if displayedLikes== likes , and displayedProfileImageURL== prOFILEIMAGEurl
// if does we will do  nothing, other than that we will update the data that changed
// and another query  to get forked recipies

  return ["recipe info", "forks"];
}

// we could merge viewOriginalReicipe with view forked recipies method
List<dynamic> viewForkedRecipe(
    {String? recipieDocId,
    int? displayedLikes,
    String? displayedProfileImageURL}) {
// no need for query for forked recipe because we have the id;
// simple get request to view recipe
// once we get the info of the recipe we will check if displayedLikes== likes , and displayedProfileImageURL== prOFILEIMAGEurl
// if does we will do  nothing, other than that we will update the data that changed
// and another query  to get forked recipies

  return ["forked recipe info", "forks"];
}

saveOrDeleteRecipe({String? recipeID, String? userID}) {
// we will check if a document with the id userID_recipeID exist
// if not we will add it, if it does exist we will delete it
}

likeOrUnlikeRecipe({String? recipeID, String? userID}) {
// we will check if a document with the id userID_recipeID exist
// if not we will add it, if it does exist we will delete it
}

List<dynamic> viewOthersProfile({String? profileID, int? displayedFollowers}) {
  // we will return thre items:
  // 1- original recipe
  //1 forked recipe
  //user data
  // and we will check if the displayedFollowers == followers
  // if not, set follower

  return ["user data", " forks", "originals"];
}

displayFollowers({String? profileID}) {
  // we will look throu the following collection
  // perform a query where userFollowed = profileID

  return ["users"];
}

displayFolloweing({String? profileID}) {
  // we will look throu the following collection
  // perform a query where userFollowing = profileID

  return ["users"];
}

followOrUnfollowUser({String? currentUserID, String? someUser}) {
// we will check if a document with the id userID_recipeID exist
// if not we will follow it, if it does exist we will unfollow 
}

UpdateUserProfile({String? userID, String? newProfile}) {
// we will user profile with newProfile
}

createOriginalRecipe({
  String? imgPath,
   String? recipeID,
  String? title,
  int? minutes,
  int? servings,
  int? calories,
  int? likes,
  String? ingredients,
  String? preperation,
  String? useId,
  String? userProfileImage,
  String? username,

}) {

  // we should create ne document in recipies with user id



}

createForkedRecipe({  
  String? imgPath,
  String? recipeID,
  String? title,
  int? minutes,
  int? servings,
  int? calories,
  int? likes,
  String? ingredients,
  String? preperation,
  String? useId,
  String? parentID,
  String? parentName,
  String? userProfileImage,
  String? username,
}) {





}
