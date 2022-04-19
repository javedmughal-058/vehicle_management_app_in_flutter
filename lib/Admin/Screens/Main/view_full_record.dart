import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:vehicle_maintainance/Admin/Screens/Main/retrieveData.dart';
import 'package:vehicle_maintainance/Admin/Screens/Main/view_record.dart';

class view_full_record extends StatefulWidget {
  String str;
  view_full_record(this.str, {Key? key}) : super(key: key);

  @override
  State<view_full_record> createState() => _view_full_recordState(this.str);
}

class _view_full_recordState extends State<view_full_record> {
  _view_full_recordState(this.record_name){}
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
        //.orderBy("Shop Rating",descending: true)
        .where("type", isEqualTo: record_name)
        .limit(1000)
       .get().then((querySnapshot) {
     querySnapshot.docs.forEach((result) {
      
         lisofitem.add(result.data());
     });
   });
   if(lisofitem.isEmpty){
     CoolAlert.show(
       context: context,
       type: CoolAlertType.info,
       text: "No record found",
     );
     print("Unable to retrieve");
   }
   else{
     setState(() {
       
       shopslist=lisofitem;
     });
   }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () { Navigator.push(context,MaterialPageRoute(builder: (context)=> view_record()));
              },
              // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text("$record_name records"),
      ),
      body:SafeArea(child: Column(
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
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
                  ),
                  child: ListView.builder(shrinkWrap: true,itemCount: shopslist.length,itemBuilder: (context,index){
                    return  Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 70,
                      decoration: BoxDecoration (
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),

                      child: Row(
                          children: [
                            const SizedBox(width: 20,),
                            Text("${shopslist[index]['Shop Rating']}",style: const TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontFamily: 'Shrikhand',
                            ),),
                            const SizedBox(width: 15),
                            Column(
                              children:  [
                                SizedBox(height: 20,),
                                Text("${shopslist[index]['Owner Name']}",style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 14,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text("Service: ${shopslist[index]['Service']}",style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                                Text("Rs/km: ${shopslist[index]['Rs/km']}",style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Shrikhand',
                                ),),
                              ],
                            ),
                            const Spacer(),
                            MaterialButton(onPressed: (){},
                              child: Row(
                                children: [
                                  IconButton(onPressed: () async {
                                    FlutterPhoneDirectCaller.callNumber("0${shopslist[index]['Contact']}");

                                  }, icon:const Icon(Icons.phone),color: Colors.green, hoverColor: Colors.indigo, ),
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
