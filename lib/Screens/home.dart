import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'bike.dart';
import 'car.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final List _imagesource=[
    'images/a.png',
    'images/b.png',
    'images/c.png'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: [
        Container(
          height: 200,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20.0)
         ),
         // color: Colors.amber[600],
          child:  CarouselSlider(
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: _imagesource.map((imagepath){
              return Builder(builder: (BuildContext context){
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  child: Image.asset(imagepath),
                );
              },
              );
            },
            ).toList(),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 180,
          child: Row(
            children: [
              SizedBox(width: 30,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> bike(),));
              },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  // color: Colors.red,
                  height: 130,
                  width: 110,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white
                  ),
                  child:  Column(
                    children: [
                      Image.asset("images/bike.png"),
                      Text('Bike',textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                      SizedBox(height: 7,),
                    ],

                  ),
                ),),
              SizedBox(width: 30,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> car(),));
              },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  // color: Colors.red,
                  height: 130,
                  width: 110,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white
                  ),
                  child:  Column(
                    children: [
                      Image.asset("images/car.png"),
                      Text('Car',textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                      SizedBox(height: 7,),
                    ],

                  ),
                ),),
            ],
          ),
        ),
        Container(
          height: 40,
          //color: Colors.amber[100],
          child: Text("Recommended",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
        ),
        Container(
          padding: EdgeInsets.all(10),
          height: 180,
          // color: Colors.amber[500],
          child: Row(
            children: [
              SizedBox(width: 30,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> bike(),));
              },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  // color: Colors.red,
                  height: 140,
                  width: 120,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white
                  ),
                  child:  Column(
                    children: [
                      Image.asset("images/wash.png",height: 90,width: 90,),
                      Text('Car Wash',textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                      SizedBox(height: 7,),
                    ],

                  ),
                ),),
              SizedBox(width: 30,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> car(),));
              },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 15, 5, 5),
                  // color: Colors.red,
                  height: 130,
                  width: 110,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: Colors.white
                  ),
                  child:  Column(
                    children: [
                     // SizedBox(height: 30,),
                      Image.asset("images/battery.png",height: 80,width: 80),
                     // SizedBox(height: 8,),
                      Text('Battery',textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                      SizedBox(height: 7,),
                    ],

                  ),
                ),),
            ],
          ),
        ),

      ],
    );
  }
}
