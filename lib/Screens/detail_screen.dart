import 'package:advance_notification/advance_notification.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';

class detail_screen extends StatefulWidget {
  Map shop;
  var shopkey;
  detail_screen(this.shopkey, this.shop, {Key? key}) : super(key: key);

  @override
  _detail_screenState createState() =>
      _detail_screenState(this.shopkey, this.shop);
}

class _detail_screenState extends State<detail_screen> {
  _detail_screenState(this.shopkey, this.singlerecord) {}

  late String reporter_name, complaint;
  late double reporter_contact;
  Map singlerecord;
  var shopkey;
  final _formKey = GlobalKey<FormState>();
  TextEditingController r_name = TextEditingController();
  TextEditingController r_contact = TextEditingController();
  TextEditingController r_complaint = TextEditingController();

  final complainttypelist = [
    "Missbehaveior",
    "Time consuming",
    "Attitude",
    "Wrong Location",
    "بکواس سٹاف"
  ];
  getreporterName(repotername) {
    this.reporter_name = repotername;
  }

  getreporterContact(reportercontact) {
    this.reporter_contact = double.parse(reportercontact);
  }

  getcomplaint(complaintdetail) {
    this.complaint = complaintdetail;
  }

  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    //print(singlerecord);
  }
  submitcomplaint() async {
    DocumentReference dc =
        FirebaseFirestore.instance.collection("complaints").doc(shopkey);
    Map<String, dynamic> complaints = {
      "complaint": complaint,
      "reporter_name": reporter_name,
      "reporter_contact": reporter_contact,
      "complainted_shop": shopkey,
    };
    dc.set(complaints).whenComplete(() {
      //print("Compliant submitted");
      setState(() {});
      const AdvanceSnackBar(
              message: "Successfully Submit Complaint",
              duration: Duration(seconds: 3),
              child: Padding(
                padding: EdgeInsets.only(left: 2),
                child: Icon(
                  Icons.all_inbox,
                  color: Colors.red,
                  size: 25,
                ),
              ),
              isIcon: true)
          .show(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shop Detail'),
          backgroundColor: const Color(0xFF37474F),
          leading: Image.asset("images/splash.png"),
          actions: [
            PopupMenuButton(
              icon: const Icon(
                  Icons.more_vert), //don't specify icon if you want 3 dot menu
              color: Colors.white,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.report_rounded,
                        color: Colors.black,
                      ),
                      const Text(
                        "Complaint",
                        style: TextStyle(
                            color: const Color(0xFF37474F),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Arial"),
                      ),
                    ],
                  ),
                ),
              ],
              onSelected: (item) {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Positioned(
                              right: -40.0,
                              top: -40.0,
                              child: InkResponse(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const CircleAvatar(
                                  child: Icon(Icons.close),
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ),
                            Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: r_name,
                                      decoration: const InputDecoration(
                                        labelText: 'Your Name',
                                        icon: Icon(Icons.person),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter Name';
                                        }
                                        return null;
                                      },
                                      onChanged: (String repotername) {
                                        getreporterName(repotername);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: r_contact,
                                      decoration: const InputDecoration(
                                        labelText: 'Contact',
                                        icon: Icon(Icons.phone),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter Contact';
                                        }
                                        return null;
                                      },
                                      onChanged: (String reportercontact) {
                                        getreporterContact(reportercontact);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: r_complaint,
                                      decoration: const InputDecoration(
                                        labelText: 'Enter Message',
                                        icon: Icon(Icons.message_outlined),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return value.length < 100
                                              ? 'complaint\'s message must \n minimum 50 characters'
                                              : null;
                                        }
                                      },
                                      onChanged: (String complaintdetail) {
                                        getcomplaint(complaintdetail);
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        RaisedButton(
                                            child: const Text("Cancel"),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            }),
                                        const Spacer(),
                                        RaisedButton(
                                          child: const Text("Submit"),
                                          onPressed: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              //print(singlerecord.keys);
                                              submitcomplaint();
                                              r_name.clear();
                                              r_contact.clear();
                                              r_complaint.clear();
                                            }
                                          },
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            Image.asset("images/map.jpeg"),
            Container(
              decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 7,
                      blurRadius: 9,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 40.0,
                        child: Image.asset(
                          "images/admin.png",
                          height: 70,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '${singlerecord['Owner Name']}',
                        style: GoogleFonts.merriweather(fontSize: 20),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          //print(shopkey);
                          FlutterPhoneDirectCaller.callNumber(
                              '0${singlerecord['Contact']}');
                        },
                        icon: const Icon(Icons.call_rounded),
                        color: Colors.green,
                        iconSize: 35,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Shop Name",
                        style: GoogleFonts.abel(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 220,
                        child: Text(
                          '${singlerecord['Shop Name']}',
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Contact",
                        style: GoogleFonts.abel(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      SizedBox(
                          width: 220,
                          child: Text('0${singlerecord['Contact']}'))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Shop Type",
                        style: GoogleFonts.abel(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      SizedBox(
                          width: 220, child: Text('${singlerecord['type']}'))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Service",
                        style: GoogleFonts.abel(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      SizedBox(
                          width: 220, child: Text('${singlerecord['Service']}'))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Outdoor Service",
                        style: GoogleFonts.abel(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      SizedBox(
                          width: 220,
                          child: Text('${singlerecord['Outdoor Services']}'))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Rs/km",
                        style: GoogleFonts.abel(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      SizedBox(
                          width: 220, child: Text('${singlerecord['Rs/km']}'))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Rating",
                        style: GoogleFonts.abel(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      SizedBox(
                          width: 220,
                          child: Text('${singlerecord['Shop Rating']}'))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Text(
                        "Affordability",
                        style: GoogleFonts.abel(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const Spacer(),
                      SizedBox(
                          width: 220,
                          child: Text('${singlerecord['Shop Affordability']}'))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          print(shopkey);
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Stack(
                                    overflow: Overflow.visible,
                                    children: <Widget>[
                                      Positioned(
                                        right: -40.0,
                                        top: -40.0,
                                        child: InkResponse(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const CircleAvatar(
                                            child: Icon(Icons.close),
                                            backgroundColor: Colors.red,
                                          ),
                                        ),
                                      ),
                                      Form(
                                        key: _formKey,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextFormField(
                                                controller: r_name,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Your Name',
                                                  icon: Icon(Icons.person),
                                                ),
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return 'Enter Name';
                                                  }
                                                  return null;
                                                },
                                                onChanged:
                                                    (String repotername) {
                                                  getreporterName(repotername);
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextFormField(
                                                controller: r_contact,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Contact',
                                                  icon: Icon(Icons.phone),
                                                ),
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return 'Enter Contact';
                                                  }
                                                  return null;
                                                },
                                                onChanged:
                                                    (String reportercontact) {
                                                  getreporterContact(
                                                      reportercontact);
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextFormField(
                                                controller: r_complaint,
                                                decoration:
                                                    const InputDecoration(
                                                  labelText: 'Enter Message',
                                                  icon: Icon(
                                                      Icons.message_outlined),
                                                ),
                                                validator: (value) {
                                                  if (value!.isEmpty) {
                                                    return value.length < 100
                                                        ? 'complaint\'s message must \n minimum 50 characters'
                                                        : null;
                                                  }
                                                },
                                                onChanged:
                                                    (String complaintdetail) {
                                                  getcomplaint(complaintdetail);
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  RaisedButton(
                                                      child:
                                                          const Text("Cancel"),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      }),
                                                  const Spacer(),
                                                  RaisedButton(
                                                    child: const Text("Submit"),
                                                    onPressed: () {
                                                      if (_formKey.currentState!
                                                          .validate()) {
                                                        //print(singlerecord.keys);
                                                        submitcomplaint();
                                                        r_name.clear();
                                                        r_contact.clear();
                                                        r_complaint.clear();
                                                      }
                                                    },
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white30),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/feedback.png",
                                height: 60,
                                width: 60,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Report',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
