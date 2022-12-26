import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:forked/Models/User.dart';
import 'package:get/get.dart';

final db = FirebaseFirestore.instance;







setUser({required String email,required String id, String? username}) async {
 
  // User appt =
  //     User(userID: id, email: email);
try{


  await db.collection('users').doc(id).set({"userID":id, "email":email, "username":username});

}catch(err){
Get.snackbar("title", "error inside SETuSER");
}
}


readUserData({String? userID})async{
user returned=user();

 try{ 
   
   await db.collection("users").doc(userID).get().then(
  (DocumentSnapshot doc) {
returned= user.fronJson(doc.data() as Map<String, dynamic>);  
Get.snackbar("title", "trueee");  // ...
  },
  
);

return returned;


 }catch(err){Get.snackbar("title", "readUser");}

}

// this was changed from where, to orderBy
usersFollowersQuery()async{

List<user> mostFollowedUsers=[];
try{
  await FirebaseFirestore.instance
    .collection('users').
   orderBy('followersNumber', descending: false ) // we need to change username to userName
    .get() //Future<QuerySnapshot<Map<String, dynamic>>>
    .then((QuerySnapshot querySnapshot) {
      
        querySnapshot.docs.forEach((doc) {// QuerySnapshot<Object?>
       
mostFollowedUsers.add(user.fronJson(doc.data() as Map<String, dynamic>));  

        });
    });

for (var element in mostFollowedUsers) {
  print(element.followersNumber);

}
return mostFollowedUsers;
}catch(err){

}
}