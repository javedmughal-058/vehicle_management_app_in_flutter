import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
class admin_home extends StatefulWidget {
  const admin_home({Key? key}) : super(key: key);

  @override
  _admin_homeState createState() => _admin_homeState();
}

class _admin_homeState extends State<admin_home> {
  bool loading=true;

  int car_m=0,car_e=0, car_O=0,car_dp=0,car_t=0,car_s=0;
  int bike_m=0,bike_e=0, bike_O=0, bike_dp=0,bike_t=0,bike_s=0;
  int battery=0, wash=0;
  final listOfServices = ["Mechanical", "Oil Change", "Electrical","Denting and Painting","Tire Shop","Spare Parts"];
  final type=["car","bike","wash"];
  void counter()async{
    var car_1 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "car")
        .where("Service", isEqualTo: "Mechanical")
        .get();
    car_1.docs.forEach((res) {
      //print(res.data());
      car_m++;
      loading=false;
    });
    var car_2 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "car")
        .where("Service", isEqualTo: "Electrical")
        .get();
    car_2.docs.forEach((res) {
      //print(res.data());
      car_e++;
    });
    var car_3 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "car")
        .where("Service", isEqualTo: "Oil Change")
        .get();
    car_3.docs.forEach((res) {
      //print(res.data());
      car_O++;
    });
    var car_4 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "car")
        .where("Service", isEqualTo: "Denting and Painting")
        .get();
    car_4.docs.forEach((res) {
      //print(res.data());
      car_dp++;
    });
    var car_5 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "car")
        .where("Service", isEqualTo: "Tire Shop")
        .get();
    car_5.docs.forEach((res) {
      //print(res.data());
      car_t++;
    });
    var car_6 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "car")
        .where("Service", isEqualTo: "Spare Parts")
        .get();
    car_6.docs.forEach((res) {
      //print(res.data());
      car_s++;
    });


    var b_1 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "bike")
        .where("Service", isEqualTo: "Mechanical")
        .get();
    b_1.docs.forEach((res) {
      //print(res.data());
      bike_m++;
    });
    var b_2 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "bike")
        .where("Service", isEqualTo: "Electrical")
        .get();
    b_2.docs.forEach((res) {
      //print(res.data());
      bike_e++;
    });
    var b_3 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "bike")
        .where("Service", isEqualTo: "Oil Change")
        .get();
    b_3.docs.forEach((res) {
      //print(res.data());
      bike_O++;
    });
    var b_4 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "bike")
        .where("Service", isEqualTo: "Denting and Painting")
        .get();
    b_4.docs.forEach((res) {
      //print(res.data());
      bike_dp++;
    });
    var b_5 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "bike")
        .where("Service", isEqualTo: "Tire Shop")
        .get();
    b_5.docs.forEach((res) {
      //print(res.data());
      bike_t++;
    });
    var b_6 = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "bike")
        .where("Service", isEqualTo: "Spare Parts")
        .get();
    b_6.docs.forEach((res) {
      //print(res.data());
      bike_s++;
    });


    var battery_r = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "battery")
        .get();
    battery_r.docs.forEach((res) {
      //print(res.data());
      battery++;
    });

    var wash_r = await FirebaseFirestore.instance
        .collection("shops")
        .where("type", isEqualTo: "wash")
        .get();
    wash_r.docs.forEach((res) {
      //print(res.data());
      wash++;
    });
    if(first){
      first=false;
      setState(() {

      });
    }}


  bool first=true;
  @override
  Widget build(BuildContext context) {
    if(first){
      counter();
    }
    Widget tempWidget = new CircularProgressIndicator( strokeWidth: 7,
      valueColor: AlwaysStoppedAnimation<Color> (Colors.blue),);
    if(loading) {
      tempWidget = Center(
        child: new CircularProgressIndicator( strokeWidth: 7,
          valueColor: AlwaysStoppedAnimation<Color> (Colors.blue),),
      );
    }
    else {
      tempWidget = new Center();//EmptyWidget
    }
    return ListView(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(30),
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: [
                  Container(
                    // padding: EdgeInsets.all(10),
                    height: 440,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue,
                          Colors.indigo,
                        ],
                      ),
                    ),
                    child:Column(
                      children: [
                        Image.asset("images/main.png",height: 100,),
                        Text("Car Shops Details",style: GoogleFonts.merriweather(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 260,
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0)
                            ),
                            color: Colors.white,
                          ),
                          child: loading==true? tempWidget:SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Mechanical Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$car_m",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Electrical Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$car_e",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Oil Change Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$car_O",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Denting & Painting Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$car_dp",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Tyre Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$car_t",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Spare Parts Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$car_s",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),

                      ],
                    ) ,
                  ),
                  SizedBox(width: 10,),
                  Container(
                    // padding: EdgeInsets.all(10),
                    height: 440,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue,
                          Colors.indigo,
                        ],
                      ),
                    ),
                    child:Column(
                      children: [
                        Image.asset("images/main1.png",height: 100,),
                        Text("Bike Shops Details",style: GoogleFonts.merriweather(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 250,
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0)
                            ),
                            color: Colors.white,
                          ),
                          child: loading==true? tempWidget: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Mechanical Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$bike_m",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Electrical Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$bike_e",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Oil Change Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$bike_O",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Denting & Painting Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$bike_dp",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Tyre Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$bike_t",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    //SizedBox(width: 20,),
                                    Text("Spare Parts Shops",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Spacer(),
                                    Text("$bike_s",style: GoogleFonts.merriweather(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),

                      ],
                    ) ,
                  ),
                  SizedBox(width: 10,),
                  Container(
                    // padding: EdgeInsets.all(10),
                    height: 440,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0)
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.blue,
                          Colors.indigo,
                        ],
                      ),
                    ),
                    child:Column(
                      children: [
                        Image.asset("images/batry.png",height: 100,),
                        Text("Battery/Wash",style: GoogleFonts.merriweather(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 250,
                          width: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0)
                            ),
                            color: Colors.white,
                          ),
                          child: loading==true? tempWidget:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  //SizedBox(width: 20,),
                                  Text("Battery Shops",style: GoogleFonts.merriweather(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Spacer(),
                                  Text("$battery",style: GoogleFonts.merriweather(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  //SizedBox(width: 20,),
                                  Text("Wash Shops",style: GoogleFonts.merriweather(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Spacer(),
                                  Text("$wash",style: GoogleFonts.merriweather(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ],
                              ),


                            ],
                          ),
                        ),

                      ],
                    ) ,
                  ),
                ])),
        Divider(
          thickness: 3,
          color: Colors.indigo,
        ),
      ],
    );
  }
}
