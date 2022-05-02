import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:vehicle_maintainance/Screens/view_screen.dart';
import 'bike.dart';
import 'car.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'detail_screen.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);


  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  late String record_name;
  List shopslist=[];
  @override
  void initState() {
    super.initState();
    fetchdatalist();
  }
  fetchdatalist() async{
    List lisofitem=[];
    dynamic newresult= await FirebaseFirestore.instance
        .collection("shops")
        //.where("Shop status", isEqualTo: "true")
        .where("Shop Rating", isGreaterThanOrEqualTo: 4)
        .orderBy("Shop Rating", descending: true)
        .get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
       // print(result.data());
        lisofitem.add(result.data());
        setState(() {
          shopslist=lisofitem;
          loading=false;
        });
      });
    });
  }

  final List _imagesource=[
    'images/a.png',
    'images/b.png',
    'images/c.png'
  ];
  bool first=true;
  bool loading=true;

  @override
  Widget build(BuildContext context) {
    if(first){
      fetchdatalist();
    }
    return ListView(
      padding: EdgeInsets.all(10),
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
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             // SizedBox(width: 10,),
              Expanded(
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> bike("bike"),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    height: 170,
                    width: 150,
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF37474F),
                    ),
                    child:  Column(
                      children: [
                        Image.asset("images/bike.png"),
                        Text('Bike',textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),),
                        //SizedBox(height: 7,),
                      ],

                    ),
                  ),

                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child:  TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> car("car"),));
              },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  // color: Colors.red,
                  height: 170,
                  width: 150,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF37474F),
                  ),
                  child:  Column(
                    children: [
                      Image.asset("images/car.png"),
                      SizedBox(height: 10,),
                      Text('Car',textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),),

                    ],

                  ),
                ),),
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          //color:Color(0xFF37474F),
          height: 40,
          //color: Colors.amber[100],
          child: Text("Recommended",textAlign: TextAlign.center,style:
          GoogleFonts.merriweather(color: Color(0xFF37474F), fontSize: 20, fontWeight: FontWeight.bold),

          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> view("wash")));
            },
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                // color: Colors.red,
                height: 100,
                width: 80,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                    Image.asset("images/wash.png",height: 60,width: 60,),
                    Text('Wash',textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),),
                    SizedBox(height: 7,),
                  ],

                ),
              ),),
            SizedBox(width: 3,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> view("battery")));
            },
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                // color: Colors.red,
                height: 100,
                width: 80,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                    SizedBox(height: 15,),
                    Image.asset("images/battery.png",height: 45,width: 60),
                    SizedBox(height: 5,),
                    Text('Battery',textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),),
                    SizedBox(height: 7,),
                  ],

                ),
              ),),
            SizedBox(width: 3,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> view("tyre")));
            },
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                // color: Colors.red,
                height: 100,
                width: 80,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                    Image.asset("images/tyres.png",height: 55,width: 60),
                    //SizedBox(height: 5,),
                    Text('Tyre',textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),),
                    SizedBox(height: 7,),
                  ],

                ),
              ),),
          ],
        ),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          //color:Color(0xFF37474F),
          height: 40,
          //color: Colors.amber[100],
          child: Text("Top Rated Shops",textAlign: TextAlign.center,style:
          GoogleFonts.merriweather(color: Color(0xFF37474F), fontSize: 20, fontWeight: FontWeight.bold),

          ),
        ),
        SizedBox(height: 10,),

        SizedBox(
          height: 280,
          child: loading==true? Center(
            child: Container(
              //width: 120,height: 120,
              child: CircularProgressIndicator(
                // backgroundColor: Colors.grey,
                strokeWidth: 7,
                valueColor: AlwaysStoppedAnimation<Color> (Colors.blue),
              ),),)
              :ListView.builder(scrollDirection: Axis.horizontal,physics: ClampingScrollPhysics(),shrinkWrap: true,itemCount: shopslist.length,itemBuilder: (context,index)=>

              Card(
                child: Center(
                  child:
                    TextButton(onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> bike(),));
                },
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                        // color: Colors.red,
                        height: 250,
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.white,
                              Colors.grey,
                            ],
                          ),
                        ),
                         child:  Column(
                      children: [
                          Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),),
                                child: Image.asset("images/cs1.jpg",), )),
                          //Divider(height: 10,color: Colors.black,),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child:Column(
                              children: [
                                Text('${shopslist[index]['Shop Name']}',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                    )
                                ),
                                SizedBox(height: 4,),
                                Text('Shop Type: ${shopslist[index]['type']}',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),),
                                SizedBox(height: 4,),
                                Text('Rating: ${shopslist[index]['Shop Rating']}',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 14,
                                  ),),
                                SizedBox(height: 4,),
                                // RatingBar.builder(
                                // initialRating: 5,
                                // minRating: 1,
                                //direction: Axis.horizontal,
                                // allowHalfRating: true,
                                //itemCount: 5,
                                //itemSize: 20.0,

                                //itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                //itemBuilder: (context, _) => Icon(
                                // Icons.star,
                                //color: Colors.amber,
                                //),
                                //onRatingUpdate: (rating) {
                                //print(rating);
                                //},
                                // ),

                              ],
                            ),
                          ),
                      ],

                    ),
                  ),),
            ),
          ),

          ),
        ),




      ],
    );
  }
}
