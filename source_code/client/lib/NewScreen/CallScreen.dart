import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  CallScreen({Key? key}) : super(key: key);

  @override
  _CallScreenState createState() => new _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          callCard("Nguyễn Phi Trường", Icons.call_made, Colors.green, "July 18,18,40"),
          callCard("Nguyễn Tiến Bách", Icons.call_missed, Colors.red, "July 20, 18:40"),
          callCard(
              "Nguyễn Tiến Bách", Icons.call_received, Colors.green, "July 20, 19:40"),
          callCard("Văn Trung Nghĩa", Icons.call_made, Colors.green, "July 18,18,40"),
          callCard("Nguyễn Minh Quang", Icons.call_missed, Colors.red, "July 20, 18:40"),
          callCard(
              "Nguyễn Minh Quang", Icons.call_received, Colors.green, "July 20, 19:40"),
          callCard("Nguyễn Phi Trường", Icons.call_made, Colors.green, "July 18,18,40"),
          callCard("Văn Trung Nghĩa", Icons.call_missed, Colors.red, "July 20, 18:40"),
          callCard(
              "Nguyễn Tiến Bách", Icons.call_received, Colors.green, "July 20, 19:40"),
        ],
      ),
    );
  }

  Widget callCard(
      String name, IconData iconData, Color iconColor, String time) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.5),
      child: ListTile(
        leading: CircleAvatar(
          radius: 26,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Row(children: [
          Icon(
            iconData,
            color: iconColor,
            size: 20,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 13,
            ),
          )
        ]),
        trailing: Icon(
          Icons.call,
          size: 28,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
