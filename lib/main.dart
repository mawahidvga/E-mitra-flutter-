import 'package:e_mitra/screens/franchise.dart';
import 'package:e_mitra/screens/franchise_details.dart';
import 'package:e_mitra/screens/service_details.dart';
import 'package:e_mitra/screens/test_api.dart';
import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/service.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(Home());

  // runApp(MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   title: "Splash Screen",
  //   home: Splash(),
  // ))
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new Home(),
      image: Image.asset("assets/dream_biz.png"
      ),
      imageBackground: AssetImage("assets/1.jpg"),
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 120.0 ,
      loaderColor: Colors.white,
    );
  }
}


