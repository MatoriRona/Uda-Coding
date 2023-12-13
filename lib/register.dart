

import 'package:flutter/material.dart';
import 'package:login_uda1/splash.dart';
import 'package:login_uda1/loginpage.dart';

  class Register extends StatefulWidget {
    const Register({Key? key}) : super(key: key);

    @override
    State<Register> createState() => _RegisterState();
  }

  class _RegisterState extends State<Register> {
  get showLoginAlert => null;
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text("Lorem ipsum, or lipsum as it is"),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    hintText: "First Name",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    hintText: "Last Name",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          hintText: "+62",
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          hintText: "Phone Number",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                        hintText: "Email",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                        hintText: "City",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Next",
                    ),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Have an account?'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => loginpage(),
                      ));
                },
                child: Text(
                  'Back to Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
