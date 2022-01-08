import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class bike_category extends StatelessWidget {
  const bike_category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select_Category'),
        backgroundColor: Color(0xFF37474F),
        leading: Image.asset("images/splash.png"),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Container(
           margin: EdgeInsets.only(left: 5,right: 5),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
            child: Expanded(
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Image.asset("images/electric.png"),
                  SizedBox(width: 10,),
                  Text("Electrical",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber),),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.navigate_next,size: 40,),
                    color: Colors.black,
                    onPressed: () {

                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5,),
          Container(
             margin: EdgeInsets.only(left: 5,right: 5),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                SizedBox(width: 10,),
                Image.asset("images/mechanical.png"),
                SizedBox(width: 10,),
                Text("Mechanical",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.amber),),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.navigate_next,size: 40,),
                  color: Colors.black,
                  onPressed: () {

                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            // margin: EdgeInsets.only(left: 5,right: 5),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                Image.asset("images/tyres.png"),
                SizedBox(width: 20,),
                Text("Tyres",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.amber),),
                SizedBox(width: 145,),
                IconButton(
                  icon: const Icon(Icons.navigate_next,size: 40,),
                  color: Colors.black,
                  onPressed: () {

                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            // margin: EdgeInsets.only(left: 5,right: 5),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                Image.asset("images/tyres.png"),
                SizedBox(width: 20,),
                Text("Tyres",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.amber),),
                SizedBox(width: 145,),
                IconButton(
                  icon: const Icon(Icons.navigate_next,size: 40,),
                  color: Colors.black,
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
