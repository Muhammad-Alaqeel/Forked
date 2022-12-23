import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../Constants/styles.dart';

class FollowComp extends StatelessWidget {
  const FollowComp({super.key, required this.followercount, required this.followingcount});
  final int? followercount;
  final int? followingcount;


  @override
  Widget build(BuildContext context) {
    //delete
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                followingcount.toString(),
                style: h2,
              ),
              Text("Following", style: h2)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Get.height/1.5,
                width: 1,
                color: lightGreen,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                followercount.toString(),
                style: h2,
              ),
              Text("Followers", style: h2)
            ],
          )
        ],
      );  }
}
