import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'Admin/Screens/login/login.dart';
import 'Screens/homepage.dart';
import 'package:firebase_core/firebase_core.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(
    const MaterialApp(
      title: ' SplashScreen ',
      debugShowCheckedModeBanner: false,
      home: SplashScreenOne(
      ),
    ),
  );
}

class SplashScreenOne extends StatefulWidget {
  const SplashScreenOne({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenOneState();
  }
}

class SplashScreenOneState extends State<SplashScreenOne> {

  @override
  void initState() {
    super.initState();
    loadData();
  }
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF37474F),
              gradient: LinearGradient(
                colors: [Color(0xFF37474F),Color(0xFF37474F),],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                //backgroundColor: Color(0xff34BD95),
                backgroundColor: Colors.black26,
                radius: 80.0,
                backgroundImage: AssetImage("images/splash.png"),
              ),
              const Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              ),

              SizedBox(
                width: 260.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('Vehicle Maintenance App'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Future<Timer> loadData() async {
    return Timer(const Duration(seconds: 2), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => main_page()));
  }
}
