
// i am not sure of how to handle arrays in factory, we need to check that ince we get the data

class following {
  String? followedUserID;
  String? userID;
  

  following(
      {
     this.followedUserID,
     this.userID
     });

  factory following.fronJson(Map json) {
    return following(
      userID: json['userID'],
      followedUserID: json['followedUserID'],
    
    );
  }
}
