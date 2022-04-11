import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'keys.dart';
import 'manage_records.dart';


class add_car_record extends StatefulWidget {
  static final kInitialPosition = LatLng(-33.8567844, 151.213108);

  add_car_record({Key? key}) : super(key: key);
  @override
  _add_car_recordPageState createState() =>  _add_car_recordPageState();
}
class _add_car_recordPageState extends State<add_car_record> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>manage_record()));
              },
              // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text("Add Record"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Car Record",
                    style: GoogleFonts.abrilFatface(
                        fontSize: 20,
                        color: Colors.black),
                    textAlign:TextAlign.center,
                  ),
                  BikeRecord(),
                ]),
          )),
    );
  }
}

class BikeRecord extends StatefulWidget {
  //RegisterPet({Key key}) : super(key: key);
  @override
  _BikeRecordState createState() => _BikeRecordState();
}

class _BikeRecordState extends State<BikeRecord> {
  late PickResult selectedPlace;

  late String Ownername, shopname, shoplocation;
  String shopservice="Mechanical", OServices="Yes";
  int shoprating=1,shopafffordability=1;
  late double ocontact;


  getOwnerName(name){
    this.Ownername=name;
  }
  getShopName(sname){
    this.shopname=sname;
  }
  getOwnerContact(contact){
    this.ocontact=double.parse(contact);
  }
  getLocation(location){
    this.shoplocation=location;
  }
  getdropdownValue(service) {
    this.shopservice=service;
  }
  getdropdownValue2(Outservice) {
    this.OServices=Outservice;
  }
  getdropdownValue3(rating) {
    this.shoprating=int.parse(rating);
  }
  getdropdownValue4(affordability) {
    this.shopafffordability=int.parse(affordability);
  }
  saveCarData() {
    //print("saved");
    DocumentReference dc =FirebaseFirestore.instance.
    collection("car_record").doc(Ownername);
    Map<String, dynamic> customers={
      "Owner Name": Ownername,
      "Shop Name": shopname,
      "Contact": ocontact,
      "Location": shoplocation,
      "Service": shopservice,
      "Outdoor Services": OServices,
      "Shop Rating":shoprating,
      "Shop Affordability": shopafffordability,
    };
    dc.set(customers).whenComplete((){
      print("$Ownername Created");
    });
  }


  //late PickResult selectedPlace;
  final _formKey = GlobalKey<FormState>();
  final listOfServices = ["Mechanical", "Oil Change", "Electrical","Denting and Painting","Tire Shop","Spare Parts"];
  final OutdoorServices = ["Yes", "No"];
  final Rating=["1","2","3","4","5"];
  final Affordability = ["1", "2","3","4","5","6","7","8","9","10"];

  String dropdownValue = 'Mechanical';
  String dropdownValue2 = 'Yes';
  String dropdownValue3 = '1';
  String dropdownValue4 = '1';

  final ON_Controller = TextEditingController();
  final SN_Controller = TextEditingController();
  final contact_Controller=TextEditingController();
  final location_Controller=TextEditingController();

 // final dbRef = FirebaseDatabase.instance.reference().child("Bike Record");

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Column(children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: TextFormField(
                    controller: ON_Controller,
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: 'Owner Name',
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter Owner Name';
                      }
                      return null;
                    },
                    onChanged: (String name){
                      getOwnerName(name);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: TextFormField(
                    controller: SN_Controller,
                    decoration: InputDecoration(
                        icon: Icon(Icons.account_balance),
                        labelText: 'Shop Name',
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Shop Name';
                      }
                      return null;
                    },
                    onChanged: (String sname){
                      getShopName(sname);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: TextFormField(
                    controller: contact_Controller,
                    decoration: InputDecoration(
                        icon: Icon(Icons.call),
                        labelText: 'Contact',
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Contact';
                      }
                      return null;
                    },
                    onChanged: (String contact){
                      getOwnerContact(contact);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: TextFormField(
                    controller: location_Controller,
                    decoration: InputDecoration(
                        icon: Icon(Icons.location_on_outlined),
                        labelText: 'Location',
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.black),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.blue),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Location';
                      }
                      return null;
                    },
                    onChanged: (String location){
                      getLocation(location);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: DropdownButtonFormField(
                  value: dropdownValue,
                  icon: Icon(Icons.keyboard_arrow_down_sharp),
                  decoration: InputDecoration(
                    labelText: "Select Service Once at a time",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  items: listOfServices.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? service) {
                   getdropdownValue(service);
                   // getService=(service);
                    setState(() {
                      dropdownValue = service!;
                    });
                  },

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropdownButtonFormField(
                  value: dropdownValue2,
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  decoration: InputDecoration(
                    labelText: "Outdoor Service",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  items: OutdoorServices.map((String value) {
                    return  DropdownMenuItem<String>(
                      value: value,
                      child:  Text(value),
                    );
                  }).toList(),
                  onChanged: (String? Outservice) {
                    getdropdownValue2(Outservice);
                    // getService=(service);
                    setState(() {
                      dropdownValue2 = Outservice!;
                    });
                  },

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropdownButtonFormField(
                  value: dropdownValue3,
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  decoration: InputDecoration(
                    hintText: 'Max. value means Max. afforable',
                    labelText: "Rating",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  items: Rating.map((String value) {
                    return  DropdownMenuItem<String>(
                      value: value,
                      child:  Text(value),
                    );
                  }).toList(),
                  onChanged: ( String? rating) {
                    getdropdownValue3(rating);
                    setState(() {
                      dropdownValue3 = rating!;
                    });
                  },

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropdownButtonFormField(
                  value: dropdownValue4,
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                  decoration: InputDecoration(
                    hintText: 'Max. value means Max. afforable',
                    labelText: "Affordability",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  items: Affordability.map((String value) {
                    return  DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: ( String? affordability) {
                    getdropdownValue4(affordability);
                    setState(() {
                      dropdownValue4 = affordability!;
                    });
                  },

                ),
              ),

              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                         saveCarData();
                         ON_Controller.clear();
                         SN_Controller.clear();
                         contact_Controller.clear();
                         location_Controller.clear();

                        },
                        child: const Text('Save Record'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo),
                        ),
                      ),

                    ],
                  )),

            ])));
  }

  @override
  void dispose() {
    super.dispose();
    ON_Controller.dispose();
    SN_Controller.dispose();
    contact_Controller.dispose();
    location_Controller.dispose();
  }
  }

 

