import 'package:flutter/cupertino.dart';
import 'package:forked/Components/CardRecipeCard.dart';
import 'package:forked/Components/userDisplay.dart';
import 'package:forked/Models/forkedRecipe.dart';
import 'package:forked/Services/FireStoreRequests/RiecipeRequests.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../Models/originalRecipie.dart';
import '../Services/FireStoreRequests/forkedRecipeRequests.dart';

class ListsOfHomeController extends GetxController {
  List<Widget> daliyInspirationList = [];
  List<Widget> mostPopularList = [];
  List<Widget> followingList = [];
  List<Widget> exploreList = [];
 

  @override
  void onInit()async {
    // TODO: implement onInit
    super.onInit();
    for (var i = 0; i < 5; i++) {
      addInDaliyInspirationList();
      addInMostPopularList();
     await addInFollowingList();
    }
exploreList= await exploring(exploreList);

    update();
  }


  addInDaliyInspirationList() {
    daliyInspirationList.add(Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: Get.width * .5,
          minHeight: Get.height * .45,
          maxHeight: Get.height * .46,
          maxWidth: Get.width * .51,
        ),
        child: SmallCardRecipeCard(
          recipeName: "pancake",
          recipeImage: "images/6.jpg",
          userName: "amjad saleh aldubayan ",
          ImageFunct: () {},
          accontFunct: () {},
        ),
      ),
    ));
  }

  addInMostPopularList() {
    mostPopularList.add(Container(
      height: Get.height * .27,
      width: Get.width * .4,
      child: UserDisplay(
        folowers: 500,
        userName: "Caven",
        funct: () {},
      ),
    ));
  }

  addInFollowingList() {
    followingList.add(Container(
      height: Get.height * .3,
      width: Get.width * .4,
      child: SmallCardRecipeCard(
        recipeName: "pancake",
        userName: "",
        ImageFunct: () {},
      ),
    ));
  }




  Future<List<Widget>> exploring(List<Widget> shuffeled)async{

List<originalRecipe> explorrer= await readAllOriginalRecipies();
List<forkedRecipe> forkedExplorer= await readAllforkedlRecipies();

explorrer.shuffle();

forkedExplorer.shuffle();



    for (var i=0; i<10; i++) {
     
  

      if(i%2==0&& i<explorrer.length){
Get.snackbar("ortiginal", explorrer[i].title.toString());
     shuffeled.add(   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: ConstrainedBox(
      constraints: BoxConstraints(
      //   minWidth: Get.width*.5,
        // minHeight: Get.height*.45,
      //   maxHeight: Get.height*.46,
      //  maxWidth: Get.width*.51,

      ),
        child: SmallCardRecipeCard(
          recipeName: explorrer[i].title!,
          recipeImage: "images/6.jpg",
          userName:
              explorrer[i].username,
          ImageFunct: () {},
          likeFunct: (){},
          accontFunct: (){},
        ),
      ),
    ));
      }


      if(i%2==1&& i<forkedExplorer.length){
        Get.snackbar("forked", forkedExplorer[i].title.toString());

          exploreList.add(   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      child: ConstrainedBox(
      constraints: BoxConstraints(
      //   minWidth: Get.width*.5,
        // minHeight: Get.height*.45,
      //   maxHeight: Get.height*.46,
      //  maxWidth: Get.width*.51,

      ),
        child: SmallCardRecipeCard(
          recipeName: forkedExplorer[i].title!,
          recipeImage: "images/6.jpg",
          userName:
              forkedExplorer[i].username,
          ImageFunct: () {},
          likeFunct: (){},
          accontFunct: (){},
        ),
      ),
    ));
      }







    };
    shuffeled.shuffle();

  return shuffeled;
  }
}

