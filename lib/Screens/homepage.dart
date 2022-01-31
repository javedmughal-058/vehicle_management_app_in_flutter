import 'package:flutter/material.dart';
import 'package:vehicle_maintainance/Admin/Screens/login/login.dart';
import 'package:vehicle_maintainance/Screens/profile.dart';
import 'package:vehicle_maintainance/Screens/register_shop.dart';

import 'home.dart';

class main_page extends StatefulWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  State<main_page> createState() => main_pageState();
}

class main_pageState extends State<main_page> {
  int _currentIndex=0;
  final tabs=[
    const home(),
    const register_shop(),
    const profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Home_Page'),
            backgroundColor: Color(0xFF37474F),
            leading: Image.asset("images/splash.png")
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomNavigationBar(
            fixedColor: Colors.amber,
            backgroundColor: Color(0xFF37474F),
            iconSize: 22,
            selectedFontSize: 17,
            currentIndex: _currentIndex,
            items:const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.how_to_reg),
                label: 'Register Shop',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.admin_panel_settings_outlined),
                label: 'Admin',
              ),
            ],
            onTap: (index){
              setState(() {
                _currentIndex=index;
              });
            },
          ),
        ));
  }
}

