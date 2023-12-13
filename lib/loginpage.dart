import 'package:flutter/material.dart';
import 'package:login_uda1/register.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _rememberMeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 20),
              Text(
                "lorem ipsum, or lipsum as it is",
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    child: TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        hintText: "Username",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      onChanged: (value) {},
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                        hintText: "Password",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMeController.text.isNotEmpty,
                    onChanged: (value) {
                      setState(() {
                        _rememberMeController.text =
                            _rememberMeController.text.isEmpty ? "1" : "";
                      });
                    },
                  ),
                  Text("Remember Me"),
                  Spacer(),
                  Text("Forgot password")
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Center(child: Text("Login")),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Or Sign in With",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/google.png',
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/facebook.png',
                        height: 80,
                        width: 80,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have am account?"),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(),
                      ));
                },
                child: Text(
                  "Register Now",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
