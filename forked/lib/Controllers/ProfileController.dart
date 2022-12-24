import 'package:flutter/cupertino.dart';
import 'package:forked/Components/CardRecipeCard.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  List<Widget>? userRecipes = [];
  List<Widget> userInnovations = [];
  List<Widget> userSaved = [];
  int? currentIndex = 0;

  setIndex({required int index}) {
    currentIndex = index;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

   
    //userRecipes list :
    userRecipes = [
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: Get.height * .3,
                width: Get.width * .4,
                child: SmallCardRecipeCard(
                  recipeName: "pancake",
                  recipeImage: "images/6.jpg",
                  funct: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: Get.height * .3,
                width: Get.width * .4,
                child: SmallCardRecipeCard(
                  recipeName: "pancake",
                  recipeImage: "images/6.jpg",
                  funct: () {},
                ),
              )
            ],
          )
        ],
      )
    ];

    //userSaved list :
    userSaved = [
      Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: Get.height * .3,
                width: Get.width * .4,
                child: SmallCardRecipeCard(
                  recipeName: "pancake",
                  recipeImage: "images/6.jpg",
                  funct: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: Get.height * .3,
                width: Get.width * .4,
                child: SmallCardRecipeCard(
                  recipeName: "pancake",
                  recipeImage: "images/6.jpg",
                  funct: () {},
                ),
              ),
            ],
          )
        ],
      )
    ];

    //userInnovations list :
    userInnovations = [
      Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: Get.height * .3,
                width: Get.width * .4,
                child: SmallCardRecipeCard(
                  recipeName: "pancake",
                  recipeImage: "images/6.jpg",
                  funct: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: Get.height * .3,
                width: Get.width * .4,
                child: SmallCardRecipeCard(
                  recipeName: "pancake",
                  recipeImage: "images/6.jpg",
                  funct: () {},
                ),
              )
            ],
          )
        ],
      )
    ];
  }
}
