import 'package:camera/camera.dart';
import 'package:chat_app_flutter_socketio/NewScreen/LandingScreen.dart';
import 'package:chat_app_flutter_socketio/Screens/CameraScreen.dart';
import 'package:chat_app_flutter_socketio/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_flutter_socketio/Screens/Homescreens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "OpenSans",
        primaryColor: Color(0xFF075E54),
        hintColor: Color(0xFF128C7E),
      ),
      home: LoginScreen(),
    );
  }
}
