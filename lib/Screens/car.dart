import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'car_category.dart';
import 'home.dart';
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
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (c)=>home()));
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text("Catagories",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
          ),
          Container(
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //SizedBox(width: 3,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_category(),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 15, 5, 10),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
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
                          color: Colors.lightGreen[200]
                      ),
                      child:  Column(
                        children: [
                          Image.asset("images/toyota.png",width: 70,),
                          SizedBox(height: 20,),
                          Text('HONDA',textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),),
                          SizedBox(height: 7,),
                        ],

                      ),
                    ),),
                 // SizedBox(width: 3,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_category(),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
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
                          color: Colors.indigo[200]
                      ),
                      child:  Column(
                        children: [
                          SizedBox(height: 5,),
                          Image.asset("images/suzuki.png",width: 60,),
                          SizedBox(height: 15,),
                          Text('SUZUKI',textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),),
                          SizedBox(height: 7,),
                        ],

                      ),
                    ),),
                  //SizedBox(width: 3,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_category(),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
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
                          color: Colors.deepOrange[300]
                      ),
                      child:  Column(
                        children: [
                          Image.asset("images/mercedes.png",width: 60,),
                          SizedBox(height: 15,),
                          Text('MERCEDES',textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),),
                          SizedBox(height: 7,),
                        ],

                      ),
                    ),),
                  //SizedBox(width: 3,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_category(),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
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
                          color: Colors.green[300]
                      ),
                      child:  Column(
                        children: [
                          Image.asset("images/honda_car.png",width: 80,),
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
                  //SizedBox(width: 3,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_category(),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
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
                          color: Colors.lightBlueAccent[100]
                      ),
                      child:  Column(
                        children: [
                          SizedBox(height: 2,),
                          Image.asset("images/bmw.png",width: 65,),
                          SizedBox(height: 15,),
                          Text('BMW',textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),),
                          SizedBox(height: 7,),
                        ],

                      ),
                    ),),
                  //SizedBox(width: 3,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> car_category(),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
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
                          color: Colors.lime[300]
                      ),
                      child:  Column(
                        children: [
                          SizedBox(height: 3,),
                          Image.asset("images/audi.png",height: 60,width: 80,),
                          SizedBox(height: 15,),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> car_category(),));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> car_category(),));
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> car_category(),));
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
          Container(
            padding: EdgeInsets.fromLTRB(10, 10,0, 5),
            child: Text("Suggested Shops",style: TextStyle(fontSize:20),),
          ),
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
