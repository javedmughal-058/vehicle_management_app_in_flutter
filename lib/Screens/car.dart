import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'category.dart';
import 'detail.dart';
import 'detail_screen.dart';
import 'homepage.dart';
class car extends StatefulWidget {
  String str;
  car(this.str, {Key? key}) : super(key: key);

  @override
  _carState createState() => _carState(this.str);
}

class _carState extends State<car> {
  _carState(this.type){}
  late String type;
  List topshopslist=[];
  List affordableshopslist=[];
  @override
  void initState() {
    super.initState();
    fetchdatalist();
    fetchdataofaffodability();
  }
  fetchdatalist() async{
    List lisoftopitem=[];
    dynamic newresult= await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: type)
        .get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        //print(result.data());
        lisoftopitem.add(result.data());
        setState(() {
          topshopslist=lisoftopitem;
        });
      });
    });

  }
  fetchdataofaffodability() async{
    List lisofaffordableitem=[];
    dynamic newresult= await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: type)
        .get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        //print(result.data());
        lisofaffordableitem.add(result.data());
        setState(() {
          affordableshopslist=lisofaffordableitem;
        });
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cars'),
        backgroundColor: Color(0xFF37474F),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (c)=>main_page()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> category(type),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 15, 5, 10),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> category(type),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.grey,
                            Colors.white,
                          ],
                        ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> category(type),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> category(type),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.grey,
                            Colors.white,
                          ],
                        ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> category(type),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> category(type),));
                  },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                      // color: Colors.red,
                      height: 125,
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.grey,
                            Colors.white,
                          ],
                        ),
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
          SizedBox(
            height: 270,
            child: ListView.builder(scrollDirection: Axis.horizontal,physics: ClampingScrollPhysics(),shrinkWrap: true,itemCount: topshopslist.length,itemBuilder: (context,index)=>
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
                                  Text('${topshopslist[index]['Shop Name']}',
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.merriweather(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
                                  SizedBox(height: 4,),
                                  Text('Shop Type: ${topshopslist[index]['type']}',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),),
                                  SizedBox(height: 4,),
                                  Text('Rating: ${topshopslist[index]['Shop Rating']}',
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
          Container(
            padding: EdgeInsets.fromLTRB(10, 10,0, 5),
            child: Text("Suggested Shops",style: TextStyle(fontSize:20),),
          ),
          SizedBox(height: 15,),
          ListView.builder(physics: ClampingScrollPhysics(),shrinkWrap: true,itemCount: affordableshopslist.length,itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.all(4),
              child: Container(
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
                  //mainAxisAlignment: MainAxisAlignment.,
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.home_work_sharp),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("${affordableshopslist[index]["Shop Name"]}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("Affordability: ${affordableshopslist[index]["Shop Affordability"]}",style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("${affordableshopslist[index]["Service"]}",style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),

                      ],
                    ),
                    Spacer(),
                    IconButton(
                      icon: const Icon(Icons.remove_red_eye,size: 25,),
                      color: Colors.amber,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> detail_screen(affordableshopslist),));
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          ),
        ],
      ),
    );
  }
}
