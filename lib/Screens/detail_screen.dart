import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class detail_screen extends StatefulWidget {
  const detail_screen({Key? key}) : super(key: key);

  @override
  _detail_screenState createState() => _detail_screenState();
}

class _detail_screenState extends State<detail_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shop Detail'),
          backgroundColor: Color(0xFF37474F),
          leading: Image.asset("images/splash.png"),
        ),
      body: ListView(
        children: [
          Image.asset("images/map.jpeg"),
          Container(
            decoration: BoxDecoration(
               // borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 7,
                    blurRadius: 9,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]
            ),
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 40.0,
                      child: Image.asset("images/admin.png",height: 70,),
                    ),
                    SizedBox(width: 20,),
                    Text("Ali Auto services",style: GoogleFonts.merriweather(fontSize: 20),),
                    Spacer(),
                    IconButton(onPressed: (){
                      FlutterPhoneDirectCaller.callNumber("03024716341");},
                      icon: Icon(Icons.call_rounded),color: Colors.green,iconSize: 35, ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Name",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text("Ali Ahmad")
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Contact",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text("+92-3024716341")
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("City",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text("Vehari")
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Shop Type",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text("Electrical")
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Vehical",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text("Car/Bike")
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
              ],
            ),
          )
        ],
      )
    );
  }
}
