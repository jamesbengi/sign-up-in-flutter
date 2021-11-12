import 'package:flutter/material.dart';
import 'package:lukukenya/main.dart';
class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}
  _SplashScreenState createState()=> _SplashScreenState();
class _SplashScreenState extends State<SplashScreen> {
  @override
  
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),  
    Navigator.pushReplacement(context,
     MaterialPageRoute(builder: (context)=>HomePage()
     )
    )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Image(
              image:AssetImage("assets/lofa.jpg"),
              fit: BoxFit.cover,
              )
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
void Timer(Duration duration, Future pushReplacement) {
}