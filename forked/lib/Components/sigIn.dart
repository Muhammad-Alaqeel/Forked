
import 'package:flutter/material.dart';
import 'package:forked/Services/FireBaseAuth/EmailPass.dart';
import 'package:forked/Views/BNBar.dart';
import 'package:get/get.dart';
import 'package:forked/Components/CustomButton.dart';
import 'package:forked/Components/MyTextFeild.dart';

import '../Constants/styles.dart';
import '../Controllers/RegisterationNavController.dart';

class signIn extends StatelessWidget {
    RegisterationController myController;
   signIn({super.key, required this.myController});
TextEditingController password=TextEditingController(),email=TextEditingController();
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
          child: Text("Log in to your account", maxLines: 2, style: h1,)),
 ),
Expanded(flex: 2, child: SizedBox()),
 Expanded(flex: 6, child: myTextFeild(
   controller: email,
   hint: "Email",
  icon: Icons.person_outline_rounded,)),


Expanded(flex: 6, child: myTextFeild(
  controller: password,
  hint: "Password",
 icon: Icons.lock_outline,)),

Expanded(flex:2, child: Container(
  alignment: Alignment.topRight,
  child: InkWell(
    onTap: () => myController.moveToForgotPass(),
    child: Text("Forgot Password ?",style: underline,)),
)),

Expanded(
  flex: 4,
  child: InkWell(
 
    onTap:(){loginWithPass(email: email.text, password: password.text);},
    child: myButton(text: "Login",backGroundColor: lightGreen,))),
Expanded(flex:3, child: Container(
  alignment: Alignment.bottomLeft,
  child: InkWell(
    onTap: ()=>myController.moveToSignUp(),
    child: RichText(text: TextSpan(text:"Don’t have an account ?  " , style: h4, children:[  TextSpan(text: "Sign up",style: underline) ]),))
)),
Expanded(flex:3,

child: Container())

      ],
    ),
    
    
    
    
    
    
    
    
    );
  }
}