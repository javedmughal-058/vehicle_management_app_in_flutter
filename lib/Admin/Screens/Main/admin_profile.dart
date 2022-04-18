import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_maintainance/Admin/Screens/login/login.dart';
class admin_profile extends StatefulWidget {
  const admin_profile({Key? key}) : super(key: key);

  @override
  _admin_profileState createState() => _admin_profileState();
}

class _admin_profileState extends State<admin_profile> {
  @override
  Widget build(BuildContext context) {
    return Column(
     // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
           Container(
             padding: EdgeInsets.all(20),
             child:  CircleAvatar(
                 radius: 30,
                 backgroundColor: Colors.black12,
                 child: ClipRRect(
                   borderRadius:BorderRadius.circular(50),
                   child: Image.asset("images/admin.png"),
                 )
             ),
           ),
            Column(
              children: [
                SizedBox(height: 30,),
                Text("Admin Name",style: GoogleFonts.merriweather(fontWeight: FontWeight.bold,fontSize: 18),),
                FlatButton(
                  onPressed: () => {},
                  child: Row(
                    children: <Widget>[
                      Text("View Profile"),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(thickness: 2,),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              FlatButton(
                onPressed: () => {},
                child:Row(
                  children: [
                    Icon(Icons.block_rounded),
                    SizedBox(width: 20,),
                    Text("Blocked"),
                    Spacer(),
                    Icon(Icons.navigate_next)
                  ],
                )
              ),
              Divider(thickness: 1,),
              FlatButton(
                  onPressed: () => {},
                  child:Row(
                    children: [
                      Icon(Icons.notifications_active_outlined),
                      SizedBox(width: 20,),
                      Text("Requests"),
                      Spacer(),
                      Icon(Icons.navigate_next)
                    ],
                  )
              ),
              Divider(thickness: 1,),
              FlatButton(
                  onPressed: () => {},
                  child:Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 20,),
                      Text("Setting"),
                      Spacer(),
                      Icon(Icons.navigate_next)
                    ],
                  )
              ),
              Divider(thickness: 1,),
              FlatButton(
                  onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen(),))
                  },
                  child:Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 20,),
                      Text("Logout"),
                      Spacer(),
                      Icon(Icons.navigate_next)
                    ],
                  )
              ),
              Divider(thickness: 1,),
            ],
          ),
        )

      ],
    );
  }
}
