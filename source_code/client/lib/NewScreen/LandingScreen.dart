import 'package:chat_app_flutter_socketio/NewScreen/LoginPage.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome to QuátÁp",
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 29,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height /8,
                ),
                Image.asset("assets/bg.png",color: Colors.greenAccent[700],
                  height: 340,
                  width: 340,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height /9,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                    style: TextStyle(
                      color: Colors.black, // Set text color to black
                      fontSize: 17,
                    ),
                    children: [
                      TextSpan(
                        text:"Chấp nhận và tiếp tục để đồng ý với ",
                          style: TextStyle( color: Colors.grey[600], )
                      ),
                      TextSpan(
                        text:"Chính sách và quy định của QuátÁp",
                          style: TextStyle( color: Colors.cyan, )
                      ),
                    ]
                  ),
                  ),
                ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (builder) =>LoginPage()), (route) => false);
                    },

              child: Container(
                width: MediaQuery.of(context).size.width - 110, // Corrected the placement of minus sign
                height: 50,
                child: Card(
                  margin: EdgeInsets.all(0),
                  elevation: 8,
                  color: Colors.greenAccent[700],
                  child: Center(
                    child: Text(
                      "ĐỒNG Ý VÀ TIẾP TỤC",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),

                    ),
                  ),
                ),
              ),
            ),
              ],
            ),
          ),
        ),
    );
  }
}
