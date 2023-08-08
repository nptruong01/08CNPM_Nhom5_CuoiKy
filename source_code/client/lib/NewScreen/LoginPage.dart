import 'package:chat_app_flutter_socketio/Model/CountryModel.dart';
import 'package:chat_app_flutter_socketio/NewScreen/CountryPage.dart';
import 'package:chat_app_flutter_socketio/NewScreen/OptScreen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
   const LoginPage({super.key});
 
   @override
   State<LoginPage> createState() => _LoginPageState();
 }
 
 class _LoginPageState extends State<LoginPage> {
   String countryname= "Vietnam";
   String countrycode= "+84";
   TextEditingController _controller =TextEditingController();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         elevation: 0,
         title: Text(
           "Nhập SĐT của bạn",
           style: TextStyle(
             color: Colors.teal,
             fontWeight: FontWeight.w700,
             fontSize: 18,
             wordSpacing: 1,
           ),
         ),
         centerTitle: true,
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
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         child: Column(
           children: [
             Text(
               "Whatsapp will send an SMS message to verify your number",
               style: TextStyle(
                 fontSize: 13.5,
               ),
             ),
             SizedBox(
               height: 5,
             ),
             Text(
               "What's my number?",
               style: TextStyle(
                 fontSize: 12.8,
                 color: Colors.cyan[800],
               ),
             ),
             SizedBox(
               height: 15,
             ),
             countryCard(),
             SizedBox(
               height: 5,
             ),
             number(),
             Expanded(child: Container()),
             InkWell(
               onTap: (){
                 if(_controller.text.length<10){
                   showMydilogue1();
                 }else{
                   showMydilogue();
                 }
               },
               child: Container(
                 color: Colors.tealAccent[400],
                 height: 40,
                 width: 70,
                 child: Center(
                   child: Text(
                     "Tiếp",
                     style: TextStyle(fontWeight: FontWeight.w600),
                   ),
                 ),
               ),
             ),

             SizedBox(
               height: 40,
             ),
           ],
         ),
       ),
     );
   }

   Widget countryCard(){
     return InkWell(
       onTap: (){
         Navigator.push( context, MaterialPageRoute(builder: (builder) => CountryPage(setCountryData: setCountryData)));
       },
       child: Container(
         width: MediaQuery.of(context).size.width / 1.5,
         padding: EdgeInsets.symmetric(vertical: 5),
         decoration: BoxDecoration(
           border: Border(
             bottom: BorderSide(
               color: Colors.teal,
               width: 1.8,
             ), // BorderSide
           ), // Border
         ),
         child: Row(
           children: [
             Expanded(
               child: Container(
                   child: Center(
                       child: Text(
                           countryname, style: TextStyle(fontSize: 16),
                       ))),
             ),
             Icon(
               Icons.arrow_drop_down,
               color: Colors.teal,
               size: 28,
             ),
           ],
         ), // Row
       ),
     );
   }

   Widget number(){
     return Container(
       width: MediaQuery.of(context).size.width / 1.5,
       height: 38,
       padding: EdgeInsets.symmetric(vertical: 5),
       child: Row(
         children: [
           Container(
             width: 70,
             decoration: BoxDecoration(
               border: Border(
                 bottom: BorderSide(
                   color: Colors.teal,
                   width: 1.8,
                 ), // BorderSide
               ), // Border
             ),
             child: Row(

               children: [
                 SizedBox(
                   width: 10,
                 ),
                 Text("+",style: TextStyle(fontSize: 18),),
                 SizedBox(
                   width: 15,
                 ),
                 Text(countrycode.substring(1),style: TextStyle(fontSize: 15),),

               ],
             ),
           ),

           SizedBox(
             width: 30,
           ),
           Container(
             decoration: BoxDecoration(
               border: Border(
                 bottom: BorderSide(
                   color: Colors.teal,
                   width: 1.8,
                 ), // BorderSide
               ), // Border
             ),
             width: MediaQuery.of(context).size.width / 1.5 -100,
             child: TextFormField(
               controller: _controller,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                   border: InputBorder.none,
                 contentPadding: EdgeInsets.all(8),
                 hintText: "Số điện thoại"

               ),
             ),

           ),
         ],
       ),
     );
   }

   void setCountryData(CountryModel countryModel) {
     setState(() {
       countryname = countryModel.name;
       countrycode = countryModel.code;
     });
     Navigator.pop(context);
   }
   Future<void> showMydilogue()  {
     return showDialog(
       context: context,
       builder: (BuildContext context) {
         return AlertDialog(
           content: SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Đang xác thực",style: TextStyle(fontSize: 14),),
                 SizedBox(height: 10,),
                 Text(countrycode +" "+ _controller.text,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                 SizedBox(height: 10,),
                 Text("Bạn có muốn chỉnh sửa lại sđt ?",style: TextStyle(fontSize: 13.5 ),),
               ],
             ),
           ),
           actions: [
             TextButton(onPressed: (){
               // Navigator.pop(context);
               Navigator.of(context).pop();

             }, child: Text("Edit")),
             TextButton(onPressed: (){
               // Navigator.pop(context);
               Navigator.of(context).pop();
               Navigator.push(context, MaterialPageRoute(builder: (builder)=>OtpScreen(
                   countryCode: countrycode,
                   number: _controller.text,
               )));

             }, child: Text("OK"))

           ],
         );
       },
     );
   }

   Future<void> showMydilogue1()  {
     return showDialog(
       context: context,
       builder: (BuildContext context) {
         return AlertDialog(
           content: SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Vui lòng điền vào ô số điện thoại",style: TextStyle(fontSize: 14),),
               ],
             ),
           ),
           actions: [
             TextButton(onPressed: (){
               // Navigator.pop(context);
               Navigator.of(context).pop();


             }, child: Text("OK"))

           ],
         );
       },
     );
   }
 }
 