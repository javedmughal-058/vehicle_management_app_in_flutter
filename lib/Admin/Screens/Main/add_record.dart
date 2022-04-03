


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class add_record extends StatefulWidget {
  add_record({Key? key}) : super(key: key);
  @override
  _add_recordPageState createState() =>  _add_recordPageState();
}
class _add_recordPageState extends State<add_record> {
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
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>screen1()));
                },
              // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text("Donor"),
      ),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text("Bike Record",
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
  final _formKey = GlobalKey<FormState>();
  final listOfServices = ["Mechanical", "Oil Change", "Electrical","Denting and Painting","Tire Shop","Spare Parts"];
  String dropdownValue = 'Mechanical';
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final contactController=TextEditingController();
  final addressController=TextEditingController();
  final dropdown= TextEditingController();

  //final dbRef = FirebaseDatabase.instance.reference().child("User");

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Owner Name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Owner Name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: ageController,
                  decoration: InputDecoration(
                    labelText: "Shop Name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Shop Name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: contactController,
                  decoration: InputDecoration(
                    labelText: "Contact",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Contact';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: addressController,
                  decoration: InputDecoration(
                    labelText: "Location",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter Location';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: DropdownButtonFormField(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward_outlined),
                  decoration: InputDecoration(
                    labelText: "Select Service Once at a time",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  items: listOfServices.map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: ( String? newValue) {
                    dropdownValue = newValue!;
                    setState(() {
                      //dropdownValue = newValue;
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
                        },
                        child: Text('Save Record'),
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
    ageController.dispose();
    nameController.dispose();
  }
}