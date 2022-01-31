import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_maintainance/Screens/car_category.dart';

import 'detail_screen.dart';
class car_detail extends StatefulWidget {
  const car_detail({Key? key}) : super(key: key);

  @override
  _car_detailState createState() => _car_detailState();
}

class _car_detailState extends State<car_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vehical Maintainance"),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (c)=>car_category()));
        }, icon: Icon(Icons.arrow_back)),
        backgroundColor: Color(0xFF37474F),
      ),
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.only(left: 10),child: Text("Shops detail",style: GoogleFonts.tajawal(fontSize: 20,fontWeight: FontWeight.bold),)),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
            child: Row(
              children: [
                SizedBox(width: 20,),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Text("Shope Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("10KM Away",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.remove_red_eye,size: 30,),
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> detail_screen(),));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
            child: Row(
              children: [
                SizedBox(width: 20,),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Text("Shope Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("10KM Away",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.remove_red_eye,size: 30,),
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> detail_screen(),));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
            child: Row(
              children: [
                SizedBox(width: 20,),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Text("Shope Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("10KM Away",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.remove_red_eye,size: 30,),
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> detail_screen(),));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
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
            child: Row(
              children: [
                SizedBox(width: 20,),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Text("Shope Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("10KM Away",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.remove_red_eye,size: 30,),
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> detail_screen(),));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
