import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
class detail_screen extends StatefulWidget {
  List shop;
   detail_screen(this.shop, {Key? key}) : super(key: key);

  @override
  _detail_screenState createState() => _detail_screenState(this.shop);
}

class _detail_screenState extends State<detail_screen> {
  _detail_screenState(this.singlerecord){}
  List singlerecord;

  void initState() {
    super.initState();
    getData();
  }
  getData() async{
    //print(singlerecord);

  }
  bool first=true;
  @override
  Widget build(BuildContext context) {
    if(first){
      getData();
    }
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
                    Text('${singlerecord[0]['Owner Name']}',style: GoogleFonts.merriweather(fontSize: 20),),
                    Spacer(),
                    IconButton(onPressed: (){
                      FlutterPhoneDirectCaller.callNumber('${singlerecord[0]['Contact']}');},
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
                    Text("Shop Name",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('${singlerecord[0]['Shop Name']}')
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Contact",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('${singlerecord[0]['Contact']}')
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Text("Shop Type",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('${singlerecord[0]['type']}')
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Service",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('${singlerecord[0]['Service']}')
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Outdoor Service",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('${singlerecord[0]['Outdoor Services']}')
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Rs/km",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('${singlerecord[0]['Rs/km']}')
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Rating",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('${singlerecord[0]['Shop Rating']}')
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                Row(
                  children: [
                    Text("Affordability",style:GoogleFonts.abel(fontWeight: FontWeight.bold,fontSize: 16),),
                    Spacer(),
                    Text('${singlerecord[0]['Shop Affordability']}')
                  ],
                ),
                SizedBox(height: 10,),
                Divider(thickness: 1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> view("wash")));
                    },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        height: 100,
                        width: 80,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white30
                        ),
                        child:  Column(
                          children: [
                            Image.asset("images/feedback.png",height: 60,width: 60,),
                            SizedBox(height: 10,),
                            Text('Report',textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),),
                          ],

                        ),
                      ),),
                  ],
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
