import 'package:flutter/material.dart';
import 'package:vehicle_maintainance/Screens/bike_detail.dart';

import 'bike_category.dart';
class bike extends StatefulWidget {
  const bike({Key? key}) : super(key: key);

  @override
  _bikeState createState() => _bikeState();
}

class _bikeState extends State<bike> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Bikes'),
          backgroundColor: Color(0xFF37474F),
          leading: Image.asset("images/splash.png"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 10,0, 5),
            child: Text("Catagories",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: 180,
            // color: Colors.amber[500],
            child: Row(
              children: [
                SizedBox(width: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> bike_category(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    // color: Colors.red,
                    height: 125,
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
                        Image.asset("images/honda_bike.png"),
                        Text('HONDA',textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),),
                        SizedBox(height: 7,),
                      ],

                    ),
                  ),),
                SizedBox(width: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> bike_category(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                    // color: Colors.red,
                    height: 125,
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
                        Image.asset("images/yamaha.png",height: 65,width: 65,),
                        SizedBox(height: 10,),
                        Text('YAHAMA',textAlign: TextAlign.center,
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
            padding: EdgeInsets.all(20),
            height: 180,
            // color: Colors.amber[500],
            child: Row(
              children: [
                SizedBox(width: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> bike_category(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    // color: Colors.red,
                    height: 125,
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
                        Image.asset("images/crown.png",height: 80,width: 80,),
                        Text('CROWN',textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),),
                        SizedBox(height: 7,),
                      ],

                    ),
                  ),),
                SizedBox(width: 20,),
                TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> bike_category(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    // color: Colors.red,
                    height: 125,
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
                        SizedBox(height: 10,),
                        Image.asset("images/superpower.png",height: 75,width: 75,),
                       // SizedBox(height: 10,),
                        Text('YAMAHA',textAlign: TextAlign.center,
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
            padding: EdgeInsets.all(20),
            height: 180,
            // color: Colors.amber[500],
            child: Row(
              children: [
                SizedBox(width: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> bike_category(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    // color: Colors.red,
                    height: 125,
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
                        Image.asset("images/united.png",height: 80,width: 80,),
                        Text('UNITED',textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),),
                        SizedBox(height: 7,),
                      ],

                    ),
                  ),),
                SizedBox(width: 20,),
                TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> bike_category(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    // color: Colors.red,
                    height: 125,
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
                        Image.asset("images/ravi.png",height: 80,width: 80,),
                        //SizedBox(height: 10,),
                        Text('RAVI',textAlign: TextAlign.center,
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
      ),
    );
  }
}