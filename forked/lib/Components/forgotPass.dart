import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:forked/Components/CustomButton.dart';
import 'package:forked/Components/MyTextFeild.dart';

import '../Constants/styles.dart';
class forgotPass extends StatelessWidget {
  const forgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
 Expanded(flex: 2,
   child: Container(
          width: Get.width,
          alignment: Alignment.centerLeft,
          child: Text("Forgot Password", maxLines: 2, style: h1,)),
 ),
Expanded(flex: 2, child: myTextFeild(hint: "Email", icon: Icons.email_outlined,)),
Expanded(flex:1,child: myButton(text: "Send", backGroundColor: lightGreen,))
        
      ],
    ),
    );
  }
}