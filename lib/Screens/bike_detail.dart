import 'package:flutter/material.dart';
class bike_detail extends StatefulWidget {
  const bike_detail({Key? key}) : super(key: key);

  @override
  _bike_detailState createState() => _bike_detailState();
}

class _bike_detailState extends State<bike_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        leading: Image.asset("images/splash.png"),
        backgroundColor: Color(0xFF37474F),
      ),
      body: ListView(
        children: [
          SizedBox(height: 15,),
          Text("Shops_detail",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 90,
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
                SizedBox(width: 90,),
                IconButton(
                  icon: const Icon(Icons.remove_red_eye,size: 40,),
                  color: Colors.amber,
                  onPressed: () {

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
