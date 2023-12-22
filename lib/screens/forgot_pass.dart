import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/login_screen.dart';
import 'package:thanzi_langa/screens/otp_pass_screen.dart';
import 'package:thanzi_langa/screens/signup_screen.dart';
import 'package:thanzi_langa/utils/colors.dart';

import 'doctor_signup_screen.dart';

class ForgotPassPage extends StatefulWidget {
  ForgotPassPage({super.key});

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _phone = TextEditingController();
  _submit() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OtpPassPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: thanziBlue,
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
                          padding: const EdgeInsets.only(
                              top: 150.0, right: 40.0, left: 40.0),
                          child: Column(
                            children: [
                              Icon(
                                CupertinoIcons.lock_shield_fill,
                                color: thanziBlue,
                                size: 200,
                              ),
                              Text(
                                "Enter your phone number.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 15,
                              spreadRadius: 1,
                              color: Colors.black.withOpacity(0.3)),
                        ],
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100),

                          // topLeft: Radius.circular(50)
                        ),
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
                                        builder: (context) => LoginPage()));
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
                        color: Colors.transparent,
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
                                        return 'Phone number should be 10 digits';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.number,
                                    cursorColor: Colors.grey[800],
                                    decoration: InputDecoration(
                                      labelText: "Phone number",
                                      labelStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                      border: InputBorder.none,
                                      hintText: "Phone Number",
                                      prefixIcon: Icon(
                                        Icons.phone,
                                        color: Colors.green[700],
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
                                  ;
                                },
                                splashColor: Colors.black,
                                child: Container(
                                  width: double.infinity,
                                  height: 35,
                                  child: Center(
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0XFF07A548),
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
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                            //topLeft: Radius.circular(100),
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
