import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/bottom_nav.dart';
import 'package:thanzi_langa/screens/home.dart';
import 'package:thanzi_langa/screens/signup_screen.dart';
import 'package:thanzi_langa/utils/colors.dart';

import '../utils/logo_grey.dart';
import 'login_screen.dart';

class MyWelcomePage extends StatefulWidget {
  const MyWelcomePage({super.key});

  @override
  State<MyWelcomePage> createState() => _MyWelcomePageState();
}

class _MyWelcomePageState extends State<MyWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "images/img.png",
                  )),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyBottomNav(
                                          index: 0,
                                        )));
                          },
                          icon: Icon(
                            CupertinoIcons.arrow_right,
                            size: 40,
                            color: Colors.blue,
                          )),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 80.0, left: 80, right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 70.0),
                              child: LogoGrey(),
                            ),
                            SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
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
                                    color: Colors.green[800],
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignPage()));
                              },
                              splashColor: Colors.black,
                              child: Container(
                                width: double.infinity,
                                height: 35,
                                child: Center(
                                  child: Text(
                                    "Signup",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    color: thanziBlue,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff07121d).withOpacity(0.9),
                        boxShadow: [
                          BoxShadow(
                              blurStyle: BlurStyle.outer,
                              color: Colors.blue.withOpacity(0.8),
                              blurRadius: 19,
                              spreadRadius: 1),
                        ],
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15000),
                            topRight: Radius.circular(0)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
