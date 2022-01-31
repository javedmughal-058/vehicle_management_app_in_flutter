import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'bike.dart';
import 'car.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


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
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      //scrollDirection: Axis.vertical,
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
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             // SizedBox(width: 10,),
              Expanded(
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> bike(),));
                },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    // color: Colors.red,
                    height: 170,
                    width: 150,
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black12
                    ),
                    child:  Column(
                      children: [
                        Image.asset("images/bike.png"),
                        Text('Bike',textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),),
                        //SizedBox(height: 7,),
                      ],

                    ),
                  ),),
              ),
              SizedBox(width: 10,),
              Expanded(
                child:  TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> car(),));
              },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  // color: Colors.red,
                  height: 170,
                  width: 150,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black12
                  ),
                  child:  Column(
                    children: [
                      Image.asset("images/car.png"),
                      SizedBox(height: 10,),
                      Text('Car',textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
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
          color:Colors.black12,
          height: 40,
          //color: Colors.amber[100],
          child: Text("Recommended",textAlign: TextAlign.center,style:
          GoogleFonts.merriweather(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),

          ),
        ),
        SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> bike(),));
              },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  // color: Colors.red,
                  height: 120,
                  width: 100,
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
                      Image.asset("images/wash.png",height: 80,width: 80,),
                      Text('Wash',textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                      SizedBox(height: 7,),
                    ],

                  ),
                ),),
              SizedBox(width: 3,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> car(),));
              },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  // color: Colors.red,
                  height: 120,
                  width: 100,
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
                      Image.asset("images/battery.png",height: 60,width: 80),
                      SizedBox(height: 5,),
                      Text('Battery',textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                      SizedBox(height: 7,),
                    ],

                  ),
                ),),
              SizedBox(width: 3,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> car(),));
              },
                child: Container(
                  padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                  // color: Colors.red,
                  height: 120,
                  width: 100,
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
                      Image.asset("images/tyres.png",height: 70,width: 80),
                      //SizedBox(height: 5,),
                      Text('Tyre',textAlign: TextAlign.center,
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
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          color:Color(0xFF37474F),
          height: 40,
          //color: Colors.amber[100],
          child: Text("Top Rated Shops",textAlign: TextAlign.center,style:
          GoogleFonts.merriweather(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),

          ),
        ),
        SizedBox(height: 10,),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> bike(),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
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
                                Text('Ali Auto Service',
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.merriweather(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  )
                                ),
                                SizedBox(height: 4,),
                                Text('15Km Away',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16,
                                  ),),
                                SizedBox(height: 4,),
                                RatingBar.builder(
                                  initialRating: 5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 20.0,

                                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),

                              ],
                            ),
                          ),
                        ],

                      ),
                    ),),
                  SizedBox(width: 5,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> bike(),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
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
                                child: Image.asset("images/cs2.jpg",), )),
                          //Divider(height: 10,color: Colors.black,),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child:Column(

                              children: [
                                Text('Sharjeel Auto Repair and Spare Parts',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.merriweather(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                ),

                                Text('15Km Away',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16,
                                  ),),
                                SizedBox(height: 2,),
                                RatingBar.builder(
                                  initialRating: 5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 20.0,

                                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),

                              ],
                            ),
                          ),
                        ],

                      ),
                    ),),
                  SizedBox(width: 5,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> bike(),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
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
                                child: Image.asset("images/cs1.jpg"), )),
                          //Divider(height: 10,color: Colors.black,),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child:Column(

                              children: [
                                Text('Razaq Honda Service',
                                    textAlign: TextAlign.start,
                                    style: GoogleFonts.merriweather(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )
                                ),
                                SizedBox(height: 4,),
                                Text('10km Away',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16,
                                  ),),
                                SizedBox(height: 4,),
                                RatingBar.builder(
                                  initialRating: 4.5,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 20.0,

                                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),

                              ],
                            ),
                          ),
                        ],

                      ),
                    ),),
                ])),



      ],
    );
  }
}
