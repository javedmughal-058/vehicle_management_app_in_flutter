
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:vehicle_maintainance/Admin/Screens/Main/admin_profile.dart';

import 'admin_profile.dart';
class reports extends StatefulWidget {
  const reports({Key? key}) : super(key: key);

  @override
  State<reports> createState() => _reportsState();
}

class _reportsState extends State<reports> {
  bool loading=true;
  List complaintlist=[];
  @override
  void initState() {
    super.initState();
    complaintshoplist();
  }
  complaintshoplist() async {
    List lisofcomplaint=[];
    dynamic newresult= await FirebaseFirestore.instance
        .collection("complaints")
        .get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        lisofcomplaint.add(result.data());
        loading=false;
      });
    });
    if(lisofcomplaint.isEmpty) {
      CoolAlert.show(
          context: context,
          type: CoolAlertType.info,
          text: "No record found");
    }
    else{
      setState(() {
        complaintlist=lisofcomplaint;
        if(complaintlist.length>9){
          count=true;
        }
        else{
          count=false;
        }
      });
    }
  }
  bool count=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,

        title: Row(children:  [
          const Text("Complaints"),
          const Spacer(),
          loading==true? Center(
            child: Container(
              width: 20,height: 20,
              child: const CircularProgressIndicator(
                // backgroundColor: Colors.grey,
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color> (Colors.white),
              ),),)
              :count==false? Container(
                  padding: const EdgeInsets.fromLTRB(6,2,6,2),
            decoration: const BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Text("${complaintlist.length}",
              style: const TextStyle(
                color: Colors.indigo,
              ),
            ),
          )
              :Container(
              padding: const EdgeInsets.fromLTRB(6,2,6,2),
              decoration: const BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: const Text("9+",
                style: TextStyle(
                  color: Colors.indigo,
                ),
              )),
        ],)

      ),
      body:SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                // width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50), ),
                  color: Colors.white,
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft:  Radius.circular(20),topRight: Radius.circular(20),),
                  ),
                  child: loading==true? Center(
                    child: Container(
                      //width: 120,height: 120,
                      child: const CircularProgressIndicator(
                        // backgroundColor: Colors.grey,
                        strokeWidth: 7,
                        valueColor:  AlwaysStoppedAnimation<Color> (Colors.blue),
                      ),),)
                      :ListView.builder(physics: ClampingScrollPhysics(),shrinkWrap: true,itemCount: complaintlist.length,itemBuilder: (context,index){
                    return  Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 220,
                      width: 300,
                      decoration: BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            SizedBox(
                              width: 270,
                              child: Column(
                                children:  [
                                  const SizedBox(height: 20,),
                                  Text("${complaintlist[index]['reporter_name']}",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    softWrap: false,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    fontFamily: 'Shrikhand',
                                  ),),
                                  Text("Contact: ${complaintlist[index]['u_contact']}",
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Shrikhand',
                                    ),),
                                  Text("type: ${complaintlist[index]['type']}",
                                    textAlign: TextAlign.start,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Shrikhand',
                                    ),),
                                  const SizedBox(height: 10,),
                                  Text("Detail: ${complaintlist[index]['complaint']}",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 6,
                                    softWrap: false,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Shrikhand',
                                    ),),
                                  const Spacer(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton.icon(
                                          label: const Text('Accept'),
                                          icon: const Icon(Icons.one_k, color: Colors.green,),
                                          onPressed: () {

                                          }
                                      ),
                                      TextButton.icon(

                                          label: const Text('Reject'),
                                          icon: const Icon(Icons.cancel_outlined, color: Colors.red,),
                                          onPressed: () {
                                          }
                                      ),
                                      IconButton(onPressed: (){
                                        FlutterPhoneDirectCaller.callNumber('${complaintlist[index]['u_contact']}');},
                                        icon: const Icon(Icons.call_rounded),color: Colors.green,iconSize: 35, ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ]
                      ),
                    );
                  },
                  ),

                ),
              ),
            ),

          ]
      ),
      ),
    );
  }
}
