// setNewUser({String? userID, String? email}) {
// // create new document in the database with the id userID and email feild = to email
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:forked/Models/User.dart';
import 'package:forked/Services/FireStoreRequests/RiecipeRequests.dart';

import '../../Models/originalRecipie.dart';
import 'UserRequests.dart';

fetchUserData({String? userID}) async{
// we will get all the user information from the data base and store it
// this is not just a request for user collection, we will do multiple queries
//1- user dara
//2- user's original recipies
//3- users forked recipe
// user liked recipe
// user saved recipe
// following
// followers
  user myUserData =  await readUserData(userID: userID);
  List<originalRecipe>   userOriginalRecipies =await readUsersOriginalRecipies(userID: userID);

}

searching({String? searchKey}) async {
  // we will yuse the key to look through the user documents and recipe documents
  // and we will return = [USELlIST, RecipeList];
  var userList = await FirebaseFirestore.instance
      .collection("user")
      .where("username", isEqualTo: searchKey).get();
  var recipe = await FirebaseFirestore.instance
      .collection("recipes")
      .where("title", isEqualTo: searchKey).get(); 
  var ForkedRecipe = await FirebaseFirestore.instance
      .collection("forkedRecipe")
      .where("title", isEqualTo: searchKey).get();


      
           
         

  return [];
}


//forkedRecipe Id
List<dynamic> explorer(
    {required String userID, required String recipeID, String? parentID}) {
  // return recipies where likes < 3 in both forked and original recipe;
// list item details:
//recipe title, image, likes, profileIMG, user name, useID, recipeID, and parentID for forked;

// when creating the forked Widget make sure to pass an atribute (parentID) that tell wether the recipe is forked or not


  return ["forkedRecipeies", "originaalRecipe"];
}
// done
List<dynamic> mostFollowed() {
  // return recipies where followers > 3;
  // profile image, name , followers;, id;
  return [];
}

//not ready
List<dynamic> FollowingRecipies({List<String>? followingIDs}) {
  // we will use the list of a ll the users that we followe to aquire their recipies
  // by using the (in) ley word in the query
  //for testing we will limit the floowingIDs to only 10 users

  //recipe title, image, likes, profileIMG, user name, useID, recipeID, and parentID for forked;

// when creating the forked Widget make sure to pass an atribute (parentID) that tell wether the recipe is forked or not
  return ["forkedRecipeies", "originaalRecipe"];
}

// we could merge viewOriginalReicipe with view forked recipies method
//done
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
//done
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

// done
saveOrDeleteRecipe({String? recipeID, String? userID}) {
// we will check if a document with the id userID_recipeID exist
// if not we will add it, if it does exist we will delete it
}


// done
likeOrUnlikeRecipe({String? recipeID, String? userID}) {
// we will check if a document with the id userID_recipeID exist
// if not we will add it, if it does exist we will delete it
}


//ready
List<dynamic> viewOthersProfile({String? profileID, int? displayedFollowers}) {
  // we will return thre items:
  // 1- original recipe
  //1 forked recipe
  //user data
  // and we will check if the displayedFollowers == followers
  // if not, set follower

  return ["user data", " forks", "originals"];
}

//done
displayFollowers({String? profileID}) {
  // we will look throu the following collection
  // perform a query where userFollowed = profileID

  return ["users"];
}


//done
displayFolloweing({String? profileID}) {
  // we will look throu the following collection
  // perform a query where userFollowing = profileID

  return ["users"];
}


//done
followOrUnfollowUser({String? currentUserID, String? someUser}) {
// we will check if a document with the id userID_recipeID exist
// if not we will follow it, if it does exist we will unfollow
}


//not ready
UpdateUserProfile({String? userID, String? newProfile}) {
  // we also need to update image
// we will user profile with newProfile
}


//done
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
//done
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
}) {}
