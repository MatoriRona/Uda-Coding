import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_uda1/loginpage.dart';

class Splash_View extends StatefulWidget {
  const Splash_View({Key? key}) : super(key: key);

  @override
  State<Splash_View> createState() => _Splash_ViewState();
}

class _Splash_ViewState extends State<Splash_View> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () { 
    Get.to(loginpage());
    });
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "welcome",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            ),
            Center(
              child: Container(
                child: Image.asset(
                    "assets/images/wepik-export-20231212125523TM79.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
