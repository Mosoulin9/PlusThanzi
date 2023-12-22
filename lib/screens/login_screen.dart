import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/bottom_nav.dart';
import 'package:thanzi_langa/screens/signup_screen.dart';
import 'package:thanzi_langa/screens/welcome_screen.dart';
import 'package:thanzi_langa/utils/colors.dart';

import 'forgot_pass.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passToggle = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyBottomNav(
                    index: 0,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: thanziBlue,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Image.asset("images/login.png"),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(100),
                            topLeft: Radius.circular(50)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyWelcomePage()));
                              },
                              icon: Icon(
                                CupertinoIcons.back,
                                color: Colors.black,
                                size: 40,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // borderRadius:
                        //     BorderRadius.only(topLeft: Radius.circular(100)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: TextFormField(
                                    controller: _phone,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Please provide a phone number";
                                      } else if (value.length != 10) {
                                        return 'Phone number must be 10 digits';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.number,
                                    cursorColor: Colors.grey[800],
                                    decoration: InputDecoration(
                                      labelText: "Phone",
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Phone",
                                      prefixIcon: Icon(
                                        CupertinoIcons.phone_fill,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.grey[400]?.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: double.infinity,
                                height: 50,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: TextFormField(
                                    controller: _password,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter a password';
                                      } else if (value.length < 6) {
                                        return 'Password can\'t be less than 6 characters';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.text,
                                    obscureText: passToggle ? true : false,
                                    cursorColor: Colors.grey[800],
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      suffixIcon: InkWell(
                                        onTap: () {
                                          passToggle
                                              ? passToggle = false
                                              : passToggle = true;
                                          setState(() {});
                                        },
                                        child: Icon(
                                          passToggle
                                              ? CupertinoIcons.eye
                                              : CupertinoIcons.eye_slash,
                                          color: Colors.white,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        CupertinoIcons.lock_fill,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.grey[400]?.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ForgotPassPage()));
                                      },
                                      child: Text(
                                        "Forgot password?",
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 10,
                                        ),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  _login();
                                },
                                splashColor: Colors.black,
                                child: Container(
                                  width: double.infinity,
                                  height: 35,
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xff07121d).withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignPage()));
                                      },
                                      child: Text(
                                        "Create account.",
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            decoration:
                                                TextDecoration.underline),
                                      )),
                                ],
                              ),
                              // SizedBox(
                              //   height: 20,
                              // ),
                              // InkWell(
                              //   onTap: () {},
                              //   splashColor: Colors.black,
                              //   child: Container(
                              //     width: double.infinity,
                              //     height: 35,
                              //     child: Center(
                              //       child: Text(
                              //         "Signup",
                              //         style: TextStyle(
                              //           color: Colors.white,
                              //         ),
                              //       ),
                              //     ),
                              //     decoration: BoxDecoration(
                              //         color: thanziBlue,
                              //         borderRadius: BorderRadius.circular(50)),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: thanziBlue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(0)),
                      ),
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
