import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forked/Components/picker.dart';
import 'package:forked/Services/FireStoreRequests/RiecipeRequests.dart';
import 'package:forked/Services/FireStoreRequests/UserRequests.dart';

import '../Components/Recipeinfo.dart';

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
              readUsersOriginalRecipies(userID: "123ikdjsdoiwjad2");
              
            },
            child: Text("data"))
      ],
    ));
  }
}
