import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_uda1/splash.dart';
import 'package:login_uda1/loginpage.dart';
import 'package:login_uda1/register.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_View(),
    );
  }
}