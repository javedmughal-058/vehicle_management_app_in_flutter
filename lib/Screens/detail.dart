import 'package:advance_notification/advance_notification.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_maintainance/Screens/category.dart';
import 'package:vehicle_maintainance/Screens/detail_screen.dart';
class detail extends StatefulWidget {
  String s,str;
  detail(this.s, this.str, {Key? key}) : super(key: key);

  @override
  detailState createState() => detailState(this.s,this.str);
}

class detailState extends State<detail> {
  detailState(this.shoptype,this.service){}
  late String shoptype;
  late String service;
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
          .where("type", isEqualTo: shoptype)
          .where("Service", isEqualTo: service)
        .get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        //print(result.data());
        lisofitem.add(result.data());
      });
    });
    if(lisofitem.isEmpty){
      CoolAlert.show(
        context: context,
        type: CoolAlertType.info,
        text: "No record found",
      );
      //Navigator.push(context, MaterialPageRoute(builder: (c)=> category(shoptype)));
      print("Unable to retrieve");
    }
    else{
      setState(() {
        shopslist=lisofitem;
        loading=false;
      });
    }
  }
  bool loading=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("$shoptype"),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (c)=>category(shoptype)));
        }, icon: Icon(Icons.arrow_back)),
        backgroundColor: Color(0xFF37474F),
      ),
      body: loading==true? Center(
        child: Container(
          //width: 120,height: 120,
          child: CircularProgressIndicator(
           // backgroundColor: Colors.grey,
            strokeWidth: 7,
            valueColor: AlwaysStoppedAnimation<Color> (Colors.blue),
          ),),)
          :ListView(
        children: [
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.only(left: 10),child: Text("Shops detail",style: GoogleFonts.tajawal(fontSize: 20,fontWeight: FontWeight.bold),)),
          SizedBox(height: 15,),
          ListView.builder(physics: ClampingScrollPhysics(),shrinkWrap: true,itemCount: shopslist.length,itemBuilder: (context,index){
                return Container(
              padding: EdgeInsets.all(4),
              child: Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                height: 70,
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
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 20,
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("${shopslist[index]["Shop Name"]}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("Rating: ${shopslist[index]["Shop Rating"]}",style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text("Affordability: ${shopslist[index]["Shop Affordability"]}",style: TextStyle(fontSize: 12,color: Colors.green,fontWeight: FontWeight.bold),),

                      ],
                    ),
                    Spacer(),
                    IconButton(
                      icon: const Icon(Icons.remove_red_eye,size: 25,),
                      color: Colors.amber,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> detail_screen(shopslist),));
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