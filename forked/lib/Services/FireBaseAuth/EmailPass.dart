import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:forked/Views/Home.dart';
import 'package:get/get.dart';

import '../../Views/BNBar.dart';

var inctence = FirebaseAuth.instance;

createAccount(
    {required String email,
    required String password,
    required rePassword,
    required username}) async {
  try {
    var firestore = FirebaseFirestore.instance;
bool check=false;
await FirebaseFirestore.instance
    .collection('users').
   where('userName', isEqualTo: username)
    .get()
    .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          check=true;
        
        });
    });
    Get.snackbar("title", "$check");
    if (check == false && password == rePassword) {
      var user = await inctence.createUserWithEmailAndPassword(
          email: email, password: password);

      print(user.user?.uid);

      if (user.user?.uid != null) {
        Get.to(BNBart());
      }
    }
  } catch (w) {
    Get.snackbar("title", w.toString());
  }
}

loginWithPass({required String email, required String password}) async {
  try {
    var user = await inctence.signInWithEmailAndPassword(
        email: email, password: password);
    if (user.user?.uid != null) {
      Get.to(BNBart());
    }
  } on FirebaseAuthException catch (err) {}
}

setEmail({required String email}) {
  try {
    print("dddddlkasdlawdkaa");
    print(email);
    print(inctence.currentUser?.uid);
    inctence.currentUser?.updateEmail(email);
    print("fffwlkeflmwefkjlefjlwekfjwef");
  } catch (err) {
    print(err);
    print("objekllklklkklklkllklkklkllkklklklklklklklkllkkllkct");
  }
}
passwordReset({required String email}) async {
  try {
   await inctence.sendPasswordResetEmail(email: email);
    
    Get.snackbar("title", "Password reset link sent . Check your email ");
  } on FirebaseAuthException catch (e) {
    Get.snackbar("title", e.message.toString());
  }
}
