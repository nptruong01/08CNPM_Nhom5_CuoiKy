import 'package:chat_app_flutter_socketio/CustomUI/CustomCard.dart';
import 'package:chat_app_flutter_socketio/Model/ChatModel.dart';
import 'package:chat_app_flutter_socketio/Screens/SelectContact.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key, required this.chatmodels, required this.sourchat});
  final List<ChatModel> chatmodels;
  final ChatModel sourchat;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(
      //   // children: [
      //   //   CustomCard(),
      //   //   CustomCard(),
      //   //   CustomCard(),
      //   //   CustomCard(),
      //   //   CustomCard(),
      //   // ],
        itemCount: widget.chatmodels.length,
      //   itemCount: chats.length,
        itemBuilder: (contex, index) => CustomCard(
            // chatModel: chats[index]
            chatModel: widget.chatmodels[index],
            sourchat: widget.sourchat,
            ),
      ),
    );
  }
}
