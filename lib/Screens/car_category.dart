import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_maintainance/Screens/car_detail.dart';
class car_category extends StatelessWidget {
  const car_category({Key? key}) : super(key: key);

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
            height: 80,
            width: 80,
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
                  Image.asset("images/electric.png",width: 60,),
                  SizedBox(width: 30,),
                  Text("Electrical",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.navigate_next,size: 30,),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));

                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 80,
            width: 80,
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
                //SizedBox(width: 5,),
                Image.asset("images/mechanical.png",height: 60,width: 90,),
                SizedBox(width: 15,),
                Text("Mechanical",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.navigate_next,size: 30,),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));

                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 80,
            width: 80,
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
                Image.asset("images/tyres.png",width: 70,),
                SizedBox(width: 25,),
                Text("Tyres",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.navigate_next,size: 30,),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));

                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 80,
            width: 80,
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
                Image.asset("images/painting.png",width: 70,),
                SizedBox(width: 30,),
                Text("Denting and Painting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.navigate_next,size: 30,),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));

                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 80,
            width: 80,
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
                Image.asset("images/spare.png",width: 70,),
                SizedBox(width: 30,),
                Text("Spare Parts",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.navigate_next,size: 30,),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));

                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            height: 80,
            width: 80,
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
                Image.asset("images/b_oil.png",width: 70,),
                SizedBox(width: 30,),
                Text("Oil Change",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.navigate_next,size: 30,),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));

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
