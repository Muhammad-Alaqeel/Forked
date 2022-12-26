import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forked/Components/picker.dart';
import 'package:forked/Services/FireStoreRequests/RiecipeRequests.dart';
import 'package:forked/Services/FireStoreRequests/UserRequests.dart';
import 'package:forked/Services/FireStoreRequests/forkedRecipeRequests.dart';

import '../Components/Recipeinfo.dart';
import '../Services/FireStoreRequests/followingRequests.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
            onPressed: () {
              // setRecipe(
              //     userID: "123ikdjsdoiwjad2",
              //     imgPath: "asdljalidjlaiwj",
              //     userProfileImage: "awdjnqwkedij",
              //     username: "wdlkijqwodi",
              //     ingredients: "adjsqliwdj",
              //     preperation: "laksdmlawkmdl",
              //     calories: 12,
              //     servings: 12222,
              //     minutes: 22,
              //     likes: 1213,
              //     title: "pancake"

              //     );
              // createFollowing(
              //     followedUserID: "ZIgU8UUkf8ZHMXqvJX9fcNnwaqU2",
              //     userID: "VP6oWVUYPEcf8fuKKqxZnr31mCy2");
              //readUsersFollowers(userID: "VP6oWVUYPEcf8fuKKqxZnr31mCy2");
              // readUsersFollowing(userID: "VP6oWVUYPEcf8fuKKqxZnr31mCy2");
              updateData(
                  collection: "users",
                  docoment: "VP6oWVUYPEcf8fuKKqxZnr31mCy2",
                  fieldKey: "username",
                  newValue: "amjad");
            },
            child: Text("data"))
      ],
    ));
  }
}
