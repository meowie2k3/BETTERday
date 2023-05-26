import 'package:betterday/pages/AuthPages/LoginPage.dart';
import 'package:betterday/pages/BotChatScreen.dart';
import 'package:betterday/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:betterday/helper/helper_function.dart';
import 'package:betterday/service/auth_service.dart';
import 'package:betterday/service/database_service.dart';
import 'package:betterday/widgets/group_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';

class BotUI extends StatefulWidget {
  const BotUI({Key? key}) : super(key: key);

  @override
  _BotUIState createState() => _BotUIState();
}

class _BotUIState extends State<BotUI> {
  String userName = "";
  String email = "";
  AuthService authService = AuthService();
  Stream? groups;
  String groupName = "";

  final String botUID = "f9ShBaviCFTTYvgb5F9ENjAqKzy1";

  // string manipulation
  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  gettingUserData() async {
    await HelperFunction.getUserEmailFromSF().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunction.getUserNameFromSF().then((val) {
      setState(() {
        userName = val!;
      });
    });
    // getting the list of snapshots in our stream
    await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
        .getUserGroups()
        .then((snapshot) {
      setState(() {
        groups = snapshot;
      });
    });
    
  }

  @override
  void initState() {
    super.initState();
    gettingUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BOT UI"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF063B28), Color(0xFF07D9AD)]),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        ),
        actions: [
          IconButton(
        icon: const Icon(Icons.logout),
        onPressed: () async {
          await authService.signOut();
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) 
                => const LoginPage()), (route) => false);
          
        },
      ),
        ],
      ),
      body: groupList(),
    );
  }

  groupList() {
    return StreamBuilder(
      stream: groups,
      builder: (context, snapshot) {
        // make some checks
        if (snapshot.hasData) {
          //print("snapshot has data");
          if (snapshot.data['groups'] != null) {
            //print("snapshot has groups");
            if (snapshot.data['groups'].length != 0) {
              if (snapshot.data['uid'] != botUID) {
                nextScreenReplace(
                    context,
                    BotChat(
                        groupId: getId(snapshot.data['groups'][0]),
                        groupName: getName(snapshot.data['groups'][0]),
                        userName: snapshot.data['fullname'],
                        email: snapshot.data['email']));
              }
              return ListView.builder(
                itemCount: snapshot.data['groups'].length,
                itemBuilder: (context, index) {
                  int reverseIndex = snapshot.data['groups'].length - index - 1;
                  return GroupTile(
                      groupId: getId(snapshot.data['groups'][reverseIndex]),
                      groupName: getName(snapshot.data['groups'][reverseIndex]),
                      userName: snapshot.data['fullname'],
                      email: snapshot.data['email']);
                },
              );
            } else {
              return noGroupWidget();
            }
          } else {
            return noGroupWidget();
          }
        } else {
          return Center(
            child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor),
          );
        }
      },
    );
  }

  noGroupWidget() {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You are not in any group",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Create a group or join a group",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
