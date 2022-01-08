import 'package:flutter/material.dart';

import 'car_detail.dart';
class car extends StatefulWidget {
  const car({Key? key}) : super(key: key);

  @override
  _carState createState() => _carState();
}

class _carState extends State<car> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cars'),
        backgroundColor: Color(0xFF37474F),
        leading: Image.asset("images/splash.png"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Catagories",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
          ),
          Container(
            height: 180,
            // color: Colors.amber[500],
            child: Row(
              children: [
                SizedBox(width: 30,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    // color: Colors.red,
                    height: 150,
                    width: 135,
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
                        Image.asset("images/toyota.png"),
                        SizedBox(height: 10,),
                        Text('HONDA',textAlign: TextAlign.center,
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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    // color: Colors.red,
                    height: 150,
                    width: 135,
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
                        Image.asset("images/suzuki.png",height: 90,),
                        SizedBox(height: 10,),
                        Text('SUZUKI',textAlign: TextAlign.center,
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
            height: 180,
            // color: Colors.amber[500],
            child: Row(
              children: [
                SizedBox(width: 30,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    // color: Colors.red,
                    height: 150,
                    width: 135,
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
                        Image.asset("images/mercedes.png",height: 80,),
                        SizedBox(height: 20,),
                        Text('MERCEDES',textAlign: TextAlign.center,
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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    // color: Colors.red,
                    height: 150,
                    width: 135,
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
                        Image.asset("images/honda_car.png",height: 90,),
                        // SizedBox(height: 10,),
                        Text('HONDA',textAlign: TextAlign.center,
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
            height: 180,
            // color: Colors.amber[500],
            child: Row(
              children: [
                SizedBox(width: 30,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    // color: Colors.red,
                    height: 150,
                    width: 135,
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
                        Image.asset("images/bmw.png",height: 90,),
                        SizedBox(height: 10,),
                        Text('BMW',textAlign: TextAlign.center,
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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> car_detail(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    // color: Colors.red,
                    height: 150,
                    width: 135,
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
                        Image.asset("images/audi.png",height: 90,),
                        SizedBox(height: 10,),
                        Text('AUDI',textAlign: TextAlign.center,
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
