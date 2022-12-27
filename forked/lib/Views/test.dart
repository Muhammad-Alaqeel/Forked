import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:forked/Components/picker.dart';
import 'package:forked/Services/FireStoreRequests/RiecipeRequests.dart';
import 'package:forked/Services/FireStoreRequests/UserRequests.dart';
import 'package:forked/Services/FireStoreRequests/allRequests.dart';
import 'package:forked/Services/FireStoreRequests/forkedRecipeRequests.dart';
import 'package:forked/Services/FireStoreRequests/savedRecipeRequests.dart';
import 'package:get/get.dart';

import '../Components/CardRecipeCard.dart';
import '../Components/Recipeinfo.dart';
import '../Services/FireStoreRequests/likedRecipeRequests.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 600,
                            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
                            child: GridView.builder(
                              itemCount: 12,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: .8
                            
                            ), itemBuilder: (context, index){
                            
                              return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: ConstrainedBox(
      constraints: BoxConstraints(
      //   minWidth: Get.width*.5,
        // minHeight: Get.height*.45,
      //   maxHeight: Get.height*.46,
      //  maxWidth: Get.width*.51,

      ),
        child: SmallCardRecipeCard(
          recipeName: "pancake",
          recipeImage: "images/6.jpg",
          userName:
              "amjad saleh aldubayan ",
          funct: () {},
        ),
      ),
    );
                            }),
                          ),
        ElevatedButton(
            onPressed: () async{
          //  await   setForkedRecipe(
          //       parentName: "pancake",
          //       parentID: "12381293892831928391283",
          //         userID: "55",
          //         imgPath: "asdljalidjlaiwj",
          //         userProfileImage: "awdjnqwkedij",
          //         username: "wdlkijqwodi",
          //         ingredients: "adjsqliwdj",
          //         preperation: "laksdmlawkmdl",
          //         calories: 12,
          //         servings: 12222,
          //         minutes: 22,
          //         likes: 1213,
          //         title: "muhammed"
                  
          //         );
          // FollowingRecipies(followingIDs: ["32456789087654324","123ikdjsdoiwjad2"]);
// readAllOriginalRecipies();

// SsearchingInForked(searchKey: "am");
// SsearchingInOriginal(searchKey: "am");
// SsearchingInUsers(searchKey: "am");


              // setForkedRecipe(userID: "123ikdjsdoiwjad2");
              
            },
            child: Text("data"))
      ],
    ));
  }
}
