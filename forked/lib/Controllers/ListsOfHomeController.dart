import 'package:flutter/cupertino.dart';
import 'package:forked/Components/SmallCardRecipeCard.dart';
import 'package:forked/Components/userDisplay.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ListsOfHomeController extends GetxController {
  List<Widget> daliyInspirationList = [];
  List<Widget> mostPopularList = [];
  List<Widget> followingList = [];
  List<Widget> exploreList = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    for (var i = 0; i < 5; i++) {
      addInDaliyInspirationList();
      addInMostPopularList();
      addInFollowingList();
      addInExploreList();
    }
  }

  addInDaliyInspirationList() {
    daliyInspirationList.add(Container(
      height: Get.height * .3,
      width: Get.width * .4,
      child: SmallCardRecipeCard(
        recipeName: "pancake",
        recipeImage: "images/6.jpg",
        funct: () {},
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
        funct: () {},
      ),
    ));
  }

  addInExploreList() {
    exploreList.add(Container(
      height: Get.height * .3,
      width: Get.width * .4,
      child: SmallCardRecipeCard(
        recipeName: "pancake",
        userName: "",
        funct: () {},
      ),
    ));
  }
}
