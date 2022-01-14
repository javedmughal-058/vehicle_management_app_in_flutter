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
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(45),
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: [
                  Container(
                    // padding: EdgeInsets.all(10),
                    height: 400,
                    width: 320,
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
                          height: 220,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0)
                            ),
                            color: Colors.white,
                          ),
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
                                  Text("20",style: GoogleFonts.merriweather(
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
                                  Text("25",style: GoogleFonts.merriweather(
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
                                  Text("Air Conditioner Shops",style: GoogleFonts.merriweather(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Spacer(),
                                  Text("20",style: GoogleFonts.merriweather(
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
                                  Text("Car Wash Shops",style: GoogleFonts.merriweather(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Spacer(),
                                  Text("10",style: GoogleFonts.merriweather(
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
                                  Text("14",style: GoogleFonts.merriweather(
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
                  SizedBox(width: 10,),
                  Container(
                    // padding: EdgeInsets.all(10),
                    height: 400,
                    width: 320,
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
                          height: 220,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0)
                            ),
                            color: Colors.white,
                          ),
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
                                  Text("20",style: GoogleFonts.merriweather(
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
                                  Text("25",style: GoogleFonts.merriweather(
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
                                  Text("20",style: GoogleFonts.merriweather(
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
                                  Text("Bike Wash Shops",style: GoogleFonts.merriweather(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  Spacer(),
                                  Text("10",style: GoogleFonts.merriweather(
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
                                  Text("14",style: GoogleFonts.merriweather(
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
