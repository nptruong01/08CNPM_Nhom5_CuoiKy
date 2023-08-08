// import 'package:flutter/material.dart';
// import 'package:otp_text_field/otp_field.dart';
// import 'package:otp_text_field/style.dart';
//
// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key, required this.number, required this.countryCode});
//   final String number;
//   final String countryCode;
//
//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }
//
// class _OtpScreenState extends State<OtpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         centerTitle: true,
//         title: Text(
//           "Verify ${widget.countryCode} ${widget.number}",
//           style: TextStyle(color: Colors.teal[800],
//           fontSize: 16.5,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.more_vert),
//             color: Colors.black,
//             onPressed: () {
//               // Add any action here when the icon is pressed
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.symmetric(horizontal: 35),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 10,
//             ),
//         RichText(
//           textAlign: TextAlign.center,
//           text: TextSpan(
//             children: [
//               TextSpan(
//                 text: "Chúng tôi đã gửi mã SMS đến số ",
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14.5,
//                 ),
//               ),
//               TextSpan(
//                 text: widget.countryCode +" "+ widget.number,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14.5,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               TextSpan(
//                 text: " Sai số?",
//                 style: TextStyle(
//                   color: Colors.cyan,
//                   fontSize: 14.5,
//                 ),
//               ),
//             ],
//           ),
//         ),
//             SizedBox(
//               height: 5,
//             ),
//             OTPTextField(
//               length: 6,
//               width: MediaQuery.of(context).size.width,
//               fieldWidth: 30,
//               style: TextStyle(
//                   fontSize: 17
//               ),
//               textFieldAlignment: MainAxisAlignment.spaceAround,
//               fieldStyle: FieldStyle.underline,
//               onCompleted: (pin) {
//                 print("Completed: " + pin);
//               },
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text("Nhập 6 kí tự",style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 14.5,
//             ),),
//             SizedBox(
//               height: 30,
//             ),
//             bottomButton("Resend SMS", Icons.message,),
//             SizedBox(
//               height: 12,
//             ),
//             Divider(
//               thickness: 1.5,
//             ),
//             SizedBox(
//               height: 12,
//             ),
//             bottomButton("Call me", Icons.call,),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget bottomButton(String text, IconData icon){
//     return Row(
//       children: [
//         Icon(
//           icon,
//           color: Colors.teal,
//           size: 24,
//         ),
//         SizedBox(
//           width: 25,
//         ),
//         Text(
//           text,
//           style: TextStyle(
//             color: Colors.teal,
//             fontSize: 14.5,
//           ),
//         ),
//       ],
//     );
//   }
// }


import 'package:chat_app_flutter_socketio/Screens/Homescreens.dart';
import 'package:chat_app_flutter_socketio/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.number, required this.countryCode});
  final String number;
  final String countryCode;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  // Function to navigate to HomeScreen
  void navigateToHomeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()), // Change to your HomeScreen
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Verify ${widget.countryCode} ${widget.number}",
          style: TextStyle(color: Colors.teal[800],
            fontSize: 16.5,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Colors.black,
            onPressed: () {
              // Add any action here when the icon is pressed
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            SizedBox(height: 10),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Chúng tôi đã gửi mã SMS đến số ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.5,
                    ),
                  ),
                  TextSpan(
                    text: widget.countryCode + " " + widget.number,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " Sai số?",
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 14.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            OTPTextField(
              length: 6,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 30,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                if (pin == "111111") {
                  navigateToHomeScreen();
                }
              },
            ),
            SizedBox(height: 20),
            Text(
              "Nhập 6 kí tự",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14.5,
              ),
            ),
            SizedBox(height: 30),
            bottomButton("Resend SMS", Icons.message),
            SizedBox(height: 12),
            Divider(thickness: 1.5),
            SizedBox(height: 12),
            bottomButton("Call me", Icons.call),
          ],
        ),
      ),
    );
  }

  Widget bottomButton(String text, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.teal,
          size: 24,
        ),
        SizedBox(width: 25),
        Text(
          text,
          style: TextStyle(
            color: Colors.teal,
            fontSize: 14.5,
          ),
        ),
      ],
    );
  }
}
