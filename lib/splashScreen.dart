// ignore_for_file: file_names

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:ml_cat_and_dog/home.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/cat_dog_icon.png',
        width: 300,
        height: 300,
      ),
      // seconds: 2,
      // navigateAfterSeconds: Home(),
      navigator: Home(),
      durationInSeconds: 5,
      showLoader: true,

      title: Text(
        'Cat and Dog Classifier',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          color: Colors.yellowAccent,
        ),
      ),
      // image:
      backgroundColor: Colors.blueAccent,
      // photoSize: 60,
      loaderColor: Colors.redAccent,

      loadingText: Text(
        "Loading...",
        style: TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    );
  }
}
