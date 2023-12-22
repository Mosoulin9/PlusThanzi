import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/login_screen.dart';
import 'package:thanzi_langa/screens/signup_screen.dart';
import 'package:thanzi_langa/utils/colors.dart';

import 'doctor_signup_screen.dart';

class DocRegPage extends StatefulWidget {
  const DocRegPage({super.key});

  @override
  State<DocRegPage> createState() => _DocRegPageState();
}

class _DocRegPageState extends State<DocRegPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _licenseNumber = TextEditingController();

  _submit() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DocSignupPage()));
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
                                        builder: (context) => SignPage()));
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
                                    controller: _licenseNumber,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Enter your license number provided by the Medical Council';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.text,
                                    cursorColor: Colors.grey[800],
                                    decoration: InputDecoration(
                                      labelText: "License Number",
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Phone",
                                      prefixIcon: Icon(
                                        Icons.badge_rounded,
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

                              SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: () {
                                  _submit();
                                },
                                splashColor: Colors.black,
                                child: Container(
                                  width: double.infinity,
                                  height: 35,
                                  child: Center(
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(
                                        color: Color(0XFF5C3A00),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0XFFDAB300),
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
