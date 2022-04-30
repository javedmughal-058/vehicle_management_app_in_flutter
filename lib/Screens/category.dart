import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bike.dart';
import 'detail.dart';
class category extends StatefulWidget {
  String s;
  category(this.s, {Key? key}) : super(key: key);

  @override
  State<category> createState() => categoryState(this.s);
}

class categoryState extends State<category> {
  categoryState(this.type){}
  late String type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Select_Category'),
        backgroundColor: Color(0xFF37474F),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (c)=>bike(type)));
        }, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: (){
          }, icon: Icon(Icons.search_outlined)),
        ],
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
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Electrical"),));
                },
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset("images/electric.png",width: 60,),
                    SizedBox(width: 15,),
                    Text("Electrical",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                    Spacer(),
                    IconButton(
                      icon: const Icon(Icons.navigate_next,size: 30,),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Electrical"),));

                      },
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(height: 10,),
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
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Mechanical"),));
              },
              child: Row(
                children: [
                  //SizedBox(width: 5,),
                  Image.asset("images/mechanical.png",width: 80,),
                  SizedBox(width: 15,),
                  Text("Mechanical",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.navigate_next,size: 30,),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Mechanical"),));
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
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
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Tire Shop"),));
              },
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Image.asset("images/tyres.png",width: 70,),
                  SizedBox(width: 15,),
                  Text("Tyres",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.navigate_next,size: 30,),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Tire Shop"),));
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
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
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Denting and Painting"),));
              },
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Image.asset("images/painting.png",width: 70,),
                  SizedBox(width: 15,),
                  Text("Denting and Painting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.navigate_next,size: 30,),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Denting and Painting"),));
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
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
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Spare Parts"),));
              },
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Image.asset("images/spare.png",width: 70,),
                  SizedBox(width: 15,),
                  Text("Spare Parts",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.navigate_next,size: 30,),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Spare Parts"),));
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
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
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Oil Change"),));
              },
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Image.asset("images/b_oil.png",width: 70,),
                  SizedBox(width: 15,),
                  Text("Oil Change",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.navigate_next,size: 30,),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Oil Change"),));
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
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
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Tire Shop"),));
              },
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Image.asset("images/bike_wheel.png",width: 70,),
                  SizedBox(width: 15,),
                  Text("Wheel Alignment",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.amber),),
                  Spacer(),
                  IconButton(
                    icon: const Icon(Icons.navigate_next,size: 30,),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Tire Shop"),));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
