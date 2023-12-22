import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/bottom_nav.dart';
import 'package:thanzi_langa/screens/doctor_reg_screen.dart';
import 'package:thanzi_langa/screens/home.dart';
import 'package:thanzi_langa/screens/login_screen.dart';
import 'package:thanzi_langa/screens/signup_screen.dart';
import 'package:thanzi_langa/screens/welcome_screen.dart';
import 'package:thanzi_langa/utils/colors.dart';

class DocSignupPage extends StatefulWidget {
  const DocSignupPage({super.key});

  @override
  State<DocSignupPage> createState() => _DocSignupPageState();
}

class _DocSignupPageState extends State<DocSignupPage> {
  bool passToggle = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _phone = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPass = TextEditingController();

  _signup() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
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
                          child: Image.asset("images/docnes.png"),
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
                                        return 'Enter phone number';
                                      } else if (value.length != 10) {
                                        return 'Phone number must be 10 digits';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.phone,
                                    cursorColor: Colors.grey[800],
                                    decoration: InputDecoration(
                                      labelText: "Phone Number",
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Phone",
                                      prefixIcon: Icon(
                                        CupertinoIcons.phone_fill,
                                        color: Colors.amber,
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
                                        return 'Enter password';
                                      } else if (value.length < 6) {
                                        return 'Password must be greater than 6 characters';
                                      } else if (value.contains(" ")) {
                                        return 'Password shouldn\'t contain white spaces';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.text,
                                    cursorColor: Colors.grey[800],
                                    obscureText: passToggle ? true : false,
                                    decoration: InputDecoration(
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
                                      labelText: "Password",
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      prefixIcon: Icon(
                                        CupertinoIcons.lock_fill,
                                        color: Colors.amber,
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
                                    controller: _confirmPass,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Confirm password';
                                      } else if (value.length < 6) {
                                        return 'Password must be greater than 6 characters';
                                      } else if (value.contains(" ")) {
                                        return 'Password shouldn\'t contain white spaces';
                                      } else if (value != _password.text) {
                                        return 'Passwords don\'t match';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.text,
                                    cursorColor: Colors.grey[800],
                                    obscureText: passToggle ? true : false,
                                    decoration: InputDecoration(
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
                                      labelText: "Confirm Password",
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Confirm Password",
                                      prefixIcon: Icon(
                                        CupertinoIcons.lock_fill,
                                        color: Colors.amber,
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
                              InkWell(
                                onTap: () {
                                  _signup();
                                },
                                splashColor: Colors.black,
                                child: Container(
                                  width: double.infinity,
                                  height: 35,
                                  child: Center(
                                    child: Text(
                                      "Signup",
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              SizedBox(
                                height: 5,
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
