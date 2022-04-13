
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'manage_records.dart';
class view_record extends StatefulWidget {

  const view_record({Key? key}) : super(key: key);
  @override
  _view_recordState createState() => _view_recordState();
}

class _view_recordState extends State<view_record> {
  int carshops=0;
  int bikeshops=0;
  int wash_tyre_shops=0;
  int battery_shops=0;
  void counter()async{
    carshops=0;
    bikeshops=0;
    var car_result = await FirebaseFirestore.instance
        .collection("car")
        .get();
    car_result.docs.forEach((res) {
      carshops++;
    });
    var wash_result = await FirebaseFirestore.instance
        .collection("bike")
        .get();
    wash_result.docs.forEach((res) {
      bikeshops++;
    });
    if(first){
      first=false;
      setState(() {

      });
    }}


bool first=true;
  @override
  Widget build(BuildContext context) {
    if(first){
    counter();}

    return Scaffold(
      appBar: AppBar(
          title: const Text('Vehical Maintainance'),
          backgroundColor: Colors.indigo,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>manage_record()));
              },
              // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.black12,
            child: Row(
              children: [
                Image.asset("images/main.png",height: 50,),
                Spacer(),
                Column(
                  children: [
                    Text("Total Car Shops",style: GoogleFonts.b612(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    SizedBox(height: 20,),
                    Text("$carshops",style: GoogleFonts.b612(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),)
                  ],
                )
              ],
            ),
          ),
          Divider(thickness: 1,),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.black12,
            child: Row(
              children: [
                Image.asset("images/main1.png",height: 50,),
                Spacer(),
                Column(
                  children: [
                    Text("Total Bike Shops",style: GoogleFonts.b612(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    SizedBox(height: 20,),
                    Text("$bikeshops",style: GoogleFonts.b612(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),)
                  ],
                )
              ],
            ),
          ),
          Divider(thickness: 1,),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.black12,
            child: Row(
              children: [
                SizedBox(width: 18,),
                Image.asset("images/batry.png",height: 50,),
                Spacer(),
                Column(
                  children: [
                    Text("Total Battery Shops",style: GoogleFonts.b612(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    SizedBox(height: 20,),
                    Text("97",style: GoogleFonts.b612(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),)
                  ],
                )
              ],
            ),
          ),
          Divider(thickness: 1,),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.black12,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Image.asset("images/wash.png",height: 50,),
                Spacer(),
                Column(
                  children: [
                    Text("Total Wash Shops",style: GoogleFonts.b612(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    SizedBox(height: 20,),
                    Text("20",style: GoogleFonts.b612(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),)
                  ],
                )
              ],
            ),
          ),
          Divider(thickness: 1,),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.black12,
            child: Row(
              children: [
                SizedBox(width: 20,),
                Image.asset("images/tyre.png",height: 50,),
                Spacer(),
                Column(
                  children: [
                    Text("Total Tyre Shops",style: GoogleFonts.b612(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    SizedBox(height: 20,),
                    Text("$wash_tyre_shops",style: GoogleFonts.b612(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),)
                  ],
                )
              ],
            ),
          ),
          Divider(thickness: 1,),

        ],
      ),
    );
  }
}
