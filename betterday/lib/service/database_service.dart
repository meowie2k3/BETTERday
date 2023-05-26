import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});

  final String botName = "BETTERday Bot";
  final String botID = "f9ShBaviCFTTYvgb5F9ENjAqKzy1";

  // reference for our collections
  final CollectionReference userCollection = 
    FirebaseFirestore.instance.collection("users");
  final CollectionReference groupCollection = 
    FirebaseFirestore.instance.collection("groups");
  // updating the userdata
  Future savingUserData(String fullname, String email) async {
    return await userCollection.doc(uid).set({
      "fullname": fullname,
      "email": email,
      "groups": [],
      "emotionRecord": [],
      "profilePic": "",
      "uid": uid,
    });
  }
  // getting user data
  Future gettingUserData(String email) async {
    QuerySnapshot snapshot = 
        await userCollection.where("email", isEqualTo: email).get();
    return snapshot;
  }

  Future recordEmotion(int choice) async{
    DocumentReference userDocumentReference = userCollection.doc(uid);
     return await userDocumentReference.update({
      //record all including duplicates
      "emotionRecord": FieldValue.arrayUnion([choice]),
  });
  }

  Future getUserEmotionRecord() async {
    return userCollection.doc(uid).snapshots();
  }

  // get user groups
  getUserGroups() async {
    return userCollection.doc(uid).snapshots();
  }

  //create a group
  Future createGroup(String userName, String id, String groupName) async {
    DocumentReference groupDocumentReference = await groupCollection.add({
      "groupName": groupName,
      "groupIcon": "",
      "admin": "${id}_$userName",
      "members": [],
      "groupId": "",
      "recentMessage": "",
      "recentMessageSender": "",
    });

    // update the members
    await groupDocumentReference.update({
      "members": FieldValue.arrayUnion(["${uid}_$userName", "${botID}_$botName"]),
      "groupId": groupDocumentReference.id,
    });


    // update bot data
    DocumentReference botDocumentReference = userCollection.doc(botID);
    await botDocumentReference.update({
      "groups": FieldValue.arrayUnion(["${groupDocumentReference.id}_$groupName"]),
    });

    // update the user data
    DocumentReference userDocumentReference = userCollection.doc(uid);
    return await userDocumentReference.update({
      "groups": FieldValue.arrayUnion(["${groupDocumentReference.id}_$groupName"]),
  });
  }
  Future getGroupAdmin(String groupId) async {
    DocumentReference d = groupCollection.doc(groupId);
    DocumentSnapshot documentSnapshot = await d.get();
    return documentSnapshot['admin'];
  }
  getChats(String groupId) async {
    return groupCollection
        .doc(groupId)
        .collection("messages")
        .orderBy("time")
        .snapshots();
  }
  Future<bool> isUserJoined(
      String groupName, String groupId, String userName) async {
    DocumentReference userDocumentReference = userCollection.doc(uid);
    DocumentSnapshot documentSnapshot = await userDocumentReference.get();

    List<dynamic> groups = await documentSnapshot['groups'];
    if (groups.contains("${groupId}_$groupName")) {
      return true;
    } else {
      return false;
    }
  }
  // send message
  sendMessage(String groupId, Map<String, dynamic> chatMessageData) async {
    groupCollection.doc(groupId).collection("messages").add(chatMessageData);
    groupCollection.doc(groupId).update({
      "recentMessage": chatMessageData['message'],
      "recentMessageSender": chatMessageData['sender'],
      "recentMessageTime": chatMessageData['time'].toString(),
    });
  }
}
