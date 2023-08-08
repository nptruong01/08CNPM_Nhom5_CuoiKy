import 'package:chat_app_flutter_socketio/CustomUI/ButtonCard.dart';
import 'package:chat_app_flutter_socketio/Model/ChatModel.dart';
import 'package:chat_app_flutter_socketio/Screens/Homescreens.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late ChatModel sourceChat;
  List<ChatModel> chatmodels  = [
    ChatModel(
        name: "Nguyễn Phi Trường",
        icon: "person.svg",
        isGroup: false,
        time: "4:00",
        currentMessage: "Hi 1",
        id:1,
    ),
    ChatModel(
        name: "Văn Trung Nghĩa",
        icon: "person.svg",
        isGroup: false,
        time: "6:00",
        currentMessage: "Hi 2",
        id:2,
    ),
    ChatModel(
        name: "Nhóm Lập Trình",
        icon: "groups.svg",
        isGroup: true,
        time: "22:00",
        currentMessage: "Hi 3",
        id:3,
    ),
    ChatModel(
        name: "Dev4",
        icon: "person.svg",
        isGroup: false,
        time: "13:00",
        currentMessage: "Hi 4",
        id:4,
    ),
    ChatModel(
        name: "Nhóm Flutter",
        icon: "groups.svg",
        isGroup: true,
        time: "16:00",
        currentMessage: "Hi 5",
        id:5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (contex, index) =>
              InkWell(
            onTap: () {
              sourceChat = chatmodels.removeAt(index);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (builder) =>
                          // HomeScreen()
                          HomeScreen(
                        chatmodels: chatmodels,
                        sourchat: sourceChat,
                      )
                  ));
            },
            child:
            ButtonCard(
              name: chatmodels[index].name,
              icon: Icons.person,
            ),
          )
    ),
    );
  }
}