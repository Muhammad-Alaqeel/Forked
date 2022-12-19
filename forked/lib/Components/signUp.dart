
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:forked/Components/CustomButton.dart';
import 'package:forked/Components/MyTextFeild.dart';

import '../Constants/styles.dart';
import '../Controllers/RegisterationNavController.dart';

class signUp extends StatelessWidget {
  RegisterationController myController;
   signUp({super.key, required this.myController});

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 20),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Expanded(flex: 8,
   child: Container(
          width: Get.width,
          alignment: Alignment.centerLeft,
          child: Text("Create an account", maxLines: 2, style: h1,)),
 ),
Expanded(flex: 2, child: SizedBox()),
 Expanded(flex: 6, child: myTextFeild(hint: "Username", icon: Icons.person_outline_rounded,)),
 Expanded(flex: 6, child: myTextFeild(hint: "Email", icon: Icons.email_outlined,)),


Expanded(flex: 6, child: myTextFeild(hint: "Password", icon: Icons.lock_outline,)),
Expanded(flex: 6, child: myTextFeild(hint: "Re-enter Password", icon: Icons.lock_outline,)),

Expanded(flex:3, child: Container(
  alignment: Alignment.topCenter,
  child: RichText(text: TextSpan(text:"By siginning in you agree to our " , style: h4, children:[TextSpan(text: "terms & condiotions",style: underline) ]),)
)),

Expanded(
  flex: 4,
  child: myButton(text: "Login",backGroundColor: lightGreen,)),
Expanded(flex:3, child: Container(
  alignment: Alignment.bottomLeft,
  child: InkWell(
    onTap: () => myController.moveToLogin(),
    child: Text("Back to login", style: underline,)),
)),
Expanded(flex:3,

child: Container())

      ],
    ),
    
    
    
    
    
    
    
    
    );
  }
}