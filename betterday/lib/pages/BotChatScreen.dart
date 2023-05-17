import 'package:betterday/pages/HomeScreen.dart';
import 'package:betterday/service/auth_service.dart';
import 'package:betterday/widgets/GradientCircle.dart';
import 'package:betterday/widgets/message_tile.dart';
import 'package:betterday/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:betterday/widgets/DustyCircle.dart';
import 'package:betterday/service/database_service.dart';

class BotChat extends StatefulWidget {
  final String groupId;
  final String groupName;
  final String userName;
  const BotChat(
      {Key? key,
      required this.groupId,
      required this.groupName,
      required this.userName})
      : super(key: key);

  @override
  State<BotChat> createState() => _BotChatState();
}

class _BotChatState extends State<BotChat> {
  AuthService authService = AuthService();
  Stream<QuerySnapshot>? chats;
  TextEditingController messageController = TextEditingController();
  String admin = "";

  @override
  void initState() {
    getChatandAdmin();
    super.initState();
  }

  getChatandAdmin() {
    DatabaseService().getChats(widget.groupId).then((val) {
      setState(() {
        chats = val;
      });
    });
    DatabaseService().getGroupAdmin(widget.groupId).then((val) {
      setState(() {
        admin = val;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Positioned(
          top: -50,
          left: -70,
          child: GradientCircle(),
        ),
        const Positioned(
          top: 450,
          right: -230,
          child: DustyCircle(radius: 250),
        ),
        Positioned(
            top: MediaQuery.of(context).padding.top + 20,
            left: 30,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 25,
              height: 25,
              child: Transform.translate(
                offset: const Offset(4, 0),
                child: GestureDetector(
                  onTap: () => nextScreen(context,const HomeScreen()),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF677294),
                  ),
                ),
              ),
            )),
        Positioned(
          top: MediaQuery.of(context).padding.top + 20,
          left: MediaQuery.of(context).size.width / 2 - 115,
          child: const Text(
            'TRÒ CHUYỆN VỚI BOT',
            style: TextStyle(
              fontFamily: 'Google Sans',
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(0, 50),
          child: chatMessages(),
          ),
        
        Container(
  alignment: Alignment.bottomCenter,
  width: MediaQuery.of(context).size.width,
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
    width: MediaQuery.of(context).size.width,
    child: Stack(
      alignment: Alignment.centerRight,
      children: [
        TextFormField(
          controller: messageController,
          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          decoration: messageInputDecoration.copyWith(
            contentPadding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width*0.01,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xff0EBE7E),
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: () {
              sendMessage();
              FocusScope.of(context).unfocus();
            },
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                //color: const Color(0xff0EBE7E),
              ),
              child: const Icon(
                Icons.send,
                color:Color(0xff0EBE7E),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
)
      ]),
    );
  }
  chatMessages() {
    return StreamBuilder(
      stream: chats,
      builder: (context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  return MessageTile(
                      message: snapshot.data.docs[index]['message'],
                      sender: snapshot.data.docs[index]['sender'],
                      sentByMe: widget.userName ==
                          snapshot.data.docs[index]['sender']);
                },
              )
            : Container();
      },
    );
  }

  sendMessage() {
    if (messageController.text.isNotEmpty) {
      Map<String, dynamic> chatMessageMap = {
        "message": messageController.text,
        "sender": widget.userName,
        "time": DateTime.now().millisecondsSinceEpoch,
      };

      DatabaseService().sendMessage(widget.groupId, chatMessageMap);
      setState(() {
        messageController.clear();
      });
    }
  }
  
}
