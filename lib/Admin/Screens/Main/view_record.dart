import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class view_record extends StatefulWidget {
  const view_record({Key? key}) : super(key: key);

  @override
  _view_recordState createState() => _view_recordState();
}

class _view_recordState extends State<view_record> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Vehical Maintainance'),
          backgroundColor: Colors.indigo,
          leading: Image.asset("images/main.png")
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.black12,
            child: Row(
              children: [
                Image.asset("images/main.png",height: 100,),
                Spacer(),
                Column(
                  children: [
                    Text("Total Car Shops",style: GoogleFonts.b612(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    SizedBox(height: 20,),
                    Text("230",style: GoogleFonts.b612(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),)
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
                Image.asset("images/main1.png",height: 100,),
                Spacer(),
                Column(
                  children: [
                    Text("Total Bike Shops",style: GoogleFonts.b612(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    SizedBox(height: 20,),
                    Text("157",style: GoogleFonts.b612(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),)
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
                Image.asset("images/batry.png",height: 100,),
                Spacer(),
                Column(
                  children: [
                    Text("Total Battery Shops",style: GoogleFonts.b612(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    SizedBox(height: 20,),
                    Text("97",style: GoogleFonts.b612(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),)
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
                Image.asset("images/wash.png",height: 100,),
                Spacer(),
                Column(
                  children: [
                    Text("Total Wash Shops",style: GoogleFonts.b612(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    SizedBox(height: 20,),
                    Text("20",style: GoogleFonts.b612(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),)
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
                Image.asset("images/tyre.png",height: 100,),
                Spacer(),
                Column(
                  children: [
                    Text("Total Tyre Shops",style: GoogleFonts.b612(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    SizedBox(height: 20,),
                    Text("58",style: GoogleFonts.b612(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),)
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
