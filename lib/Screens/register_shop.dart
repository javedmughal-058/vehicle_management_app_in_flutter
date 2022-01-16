import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
class register_shop extends StatelessWidget {
  const register_shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30),
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 30,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          //color:Color(0xFF37474F),
          height: 40,
          //color: Colors.amber[100],
          child: Text("Register Your Shops",textAlign: TextAlign.center,style:
          GoogleFonts.merriweather(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.all(30),
          color: Colors.black12,
          child: Column(
            children: [
              Text("Contact Number"),
              SizedBox(height: 10),
              Divider(thickness: 1,),
              Row(
                children: [
                  Icon(Icons.contact_phone_outlined),
                  SizedBox(width: 10,),
                  Text("+92-3062834710"),
                  Spacer(),
                  IconButton(onPressed: (){
                    FlutterPhoneDirectCaller.callNumber("03062834710");},
                    icon: Icon(Icons.call_rounded),color: Colors.green,iconSize: 25, ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.contact_phone_outlined),
                  SizedBox(width: 10,),
                  Text("+92-3024716341"),
                  Spacer(),
                  IconButton(onPressed: (){
                    FlutterPhoneDirectCaller.callNumber("03024716341");},
                    icon: Icon(Icons.call_rounded),color: Colors.green,iconSize: 25, ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.contact_phone_outlined),
                  SizedBox(width: 10,),
                  Text("+92-3137943362"),
                  Spacer(),
                  IconButton(onPressed: (){
                    FlutterPhoneDirectCaller.callNumber("03137943362");},
                    icon: Icon(Icons.call_rounded),color: Colors.green,iconSize: 25, ),
                ],
              ),
              SizedBox(height: 10),
              Divider(thickness: 1,),
              SizedBox(height: 10),
              Text("E-mail us"),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.contact_mail_outlined),
                  SizedBox(width: 10),
                  Text("chabdullah7650@gmail.com"),
                  Spacer(),
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.mail),color: Colors.green,iconSize: 25, ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.contact_mail_outlined),
                  SizedBox(width: 10),
                  Text("javedmughal609@gmail.com"),
                  Spacer(),
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.mail),color: Colors.green,iconSize: 25, ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.contact_mail_outlined),
                  SizedBox(width: 10),
                  Text("multilearner.vehari@gmail.com"),
                  Spacer(),
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.mail),color: Colors.green,iconSize: 25, ),
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        )
      ],
    );
  }
}
