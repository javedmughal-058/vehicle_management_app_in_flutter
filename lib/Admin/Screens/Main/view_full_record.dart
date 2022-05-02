import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  bool loading=true;
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
         loading=false;
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
  void _delete() {
    var firebaseUser =  FirebaseAuth.instance.currentUser;
    FirebaseFirestore.instance.collection("shops").doc(firebaseUser?.uid).delete().then((_) {
      print("success!");

    }) .catchError((error) => print('Delete failed: $error'));
  }
  Future deleteData(String id) async{
    try {
      await  FirebaseFirestore.instance
          .collection("shops")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection("collection_name")
          .doc(id)
          .delete();
    }catch (e){
      return false;
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
                  child: loading==true? Center(
                    child: Container(
                      //width: 120,height: 120,
                      child: CircularProgressIndicator(
                        // backgroundColor: Colors.grey,
                        strokeWidth: 7,
                        valueColor: AlwaysStoppedAnimation<Color> (Colors.blue),
                      ),),)
                      :ListView.builder(shrinkWrap: true,itemCount: shopslist.length,itemBuilder: (context,index){
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
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
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
                            IconButton(
                              icon: const Icon(Icons.edit,size: 20,),
                              color: Colors.indigo,
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Electrical"),));

                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete,size: 20,),
                              color: Colors.red,
                              onPressed: () {
                                _delete();
                                loading==true? Center(
                                  child: Container(
                                    //width: 120,height: 120,
                                    child: CircularProgressIndicator(
                                      // backgroundColor: Colors.grey,
                                      strokeWidth: 7,
                                      valueColor: AlwaysStoppedAnimation<Color> (Colors.blue),
                                    ),),)
                                    :fetchdatalist();
                               // Navigator.push(context, MaterialPageRoute(builder: (context)=> detail(type,"Electrical"),));

                              },
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
