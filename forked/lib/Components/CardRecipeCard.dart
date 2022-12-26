import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import '../Constants/styles.dart';

class SmallCardRecipeCard extends StatelessWidget {
  SmallCardRecipeCard(
      {super.key,
      required this.recipeName,
      this.recipeLikeCount,
      this.userName,
      this.funct,
      this.userAvatar,
      this.recipeImage}) {
    if (recipeImage == null) recipeImage = defaultImage;
    if (recipeLikeCount == null) recipeLikeCount = 0;
    if (userAvatar == null) userAvatar = defaultAvatar;
  }
  String? recipeImage;
  final String recipeName;
  int? recipeLikeCount;
  var userName;
  var userAvatar;
  Function()? funct;

  double WidthVar = Get.width * (190 / 393);
  double heightVar = Get.height * (330 / 852);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            // color: Colors.lightGreen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //----------------------------image------------------------------------
                // Expanded(child: Container()),
                Expanded(
                  flex: 6,
                  child: InkWell(
                    onTap: funct,
                    child: FractionallySizedBox(
                      widthFactor: 1,
                      child: Container(
                        // height: heightVar -10,
                        //width: WidthVar,
                        // color: Colors.amber,
                        child: FittedBox(
                          child: Material(
                            child: InkWell(
                                onTap: funct,
                                child: Image.asset(recipeImage!)),
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
                //---------------------------------------------------------------------
                Container(
                  // height: 50,
                  width: WidthVar,
                  // color: Colors.amber,
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  child: Text(
                    recipeName,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: darkGreen),
                  ),
                ),
                //main row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //-----------------------Like-----------------------------------
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Container(
                        //color: Colors.blue,
                        child: LikeButton(
                          size: 24,
                          likeCount: recipeLikeCount,
                        ),
                      ),
                    ),
                    //-----------------------Account--------------------------------

                    userName == null
                        ? SizedBox()
                        : Container(
                            //color: Colors.green,
                            child: Row(
                              children: [
                                //-----------------------avatar---------------------------------
                                FittedBox(
                                    fit: BoxFit.contain,
                                    child: Container(
                                      height: 23,
                                      width: 23,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: FittedBox(
                                        child: Image.asset(userAvatar),
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 50,
                                  width: 80,
                                  child: Center(
                                    child: Text(
                                      userName,
                                      style: h4,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
