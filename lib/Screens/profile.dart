import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_maintainance/Admin/Screens/login/login.dart';
class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Container(
         height: 250,
         width: 600,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.only(
               bottomRight: Radius.circular(90.0),
               bottomLeft: Radius.circular(90.0)),
           gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
             colors: [
               Colors.black12,
               Colors.black54,
             ],
           ),
         ),
         child: Column(
           children: [
             SizedBox(height: 20,),
             Image.asset("images/cb.png"),
             SizedBox(height: 20,),
             Text("Vehical maintainance",style: GoogleFonts.alike(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),)
           ],
         )
       ),
       SizedBox(height: 50,),
       Text("Login here for Admin Side.....!",style: GoogleFonts.pacifico(fontSize: 24,color: Colors.amber),),
       SizedBox(height: 30,),
       TextButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen(),));

       },
         child: Container(
           padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
           // color: Colors.red,
           height: 140,
           width: 120,
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
               color: Colors.grey
           ),
           child:  Column(
             children: [
               SizedBox(height: 20,),
               Icon(Icons.admin_panel_settings,size: 50,color: Colors.amber,),
               SizedBox(height: 20,),
               //Image.asset("images/wash.png",height: 80,width: 80,),
               Text('Admin Login',textAlign: TextAlign.center,
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 16,
                 ),),
               SizedBox(height: 7,),
             ],

           ),
         ),),
     ],
   );
  }
}
