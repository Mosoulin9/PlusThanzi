import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/bottom_nav.dart';
import 'package:thanzi_langa/screens/doctor_reg_screen.dart';
import 'package:thanzi_langa/screens/home.dart';
import 'package:thanzi_langa/screens/welcome_screen.dart';
import 'package:thanzi_langa/utils/colors.dart';
import 'login_screen.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  bool passToggle = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController firstname = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPass = TextEditingController();
  _signup() {
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
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset("images/signup.png"),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(100),
                              topLeft: Radius.circular(50)),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.25,
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
                                          builder: (context) =>
                                              MyWelcomePage()));
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
                        height: MediaQuery.of(context).size.height * 0.75,
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
                                      controller: firstname,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter first name';
                                        } else if (value.length < 2) {
                                          return 'Name can\'t be less than 2 characters';
                                        } else if (value.contains(" ")) {
                                          return 'Name can\'t contain white spaces';
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.text,
                                      cursorColor: Colors.grey[800],
                                      decoration: InputDecoration(
                                        labelText: "First Name",
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        border: InputBorder.none,
                                        hintText: "First name",
                                        prefixIcon: Icon(
                                          CupertinoIcons.person_alt,
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
                                      controller: surname,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter surname';
                                        } else if (value.length < 2) {
                                          return 'Surname can\'t be less than 2 characters';
                                        } else if (value.contains(" ")) {
                                          return 'Surname can\'t contain white spaces';
                                        } //else if (value
                                        // .contains([0 - 9] as Pattern)) {
                                        //return 'Surname can\'t contain special characters, use letters only';
                                        //}
                                        else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.text,
                                      cursorColor: Colors.grey[800],
                                      decoration: InputDecoration(
                                        labelText: "Surname",
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        border: InputBorder.none,
                                        hintText: "Surname",
                                        prefixIcon: Icon(
                                          CupertinoIcons.person_alt,
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
                                      controller: phone,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter phone number';
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
                                      controller: password,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter password';
                                        } else if (value.length < 6) {
                                          return 'Password should be 6 characters long';
                                        } else if (value.contains(" ")) {
                                          return 'Password shouldn\'t contain white spaces';
                                        } else {
                                          return null;
                                        }
                                      },
                                      obscureText: passToggle ? true : false,
                                      keyboardType: TextInputType.text,
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
                                  height: 10,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 50,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: TextFormField(
                                      controller: confirmPass,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Enter password';
                                        } else if (value.length < 6) {
                                          return 'Password should be 6 characters long';
                                        } else if (value.contains(" ")) {
                                          return 'Password shouldn\'t contain white spaces';
                                        } else if (value != password.text) {
                                          return 'Passwords don\'t match';
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.text,
                                      cursorColor: Colors.grey[800],
                                      obscureText: passToggle ? true : false,
                                      decoration: InputDecoration(
                                        labelText: "Confirm Password",
                                        labelStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        border: InputBorder.none,
                                        hintText: "Confirm Password",
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
                                                      DocRegPage()));
                                        },
                                        child: Text(
                                          "Doctor/Nurse register?",
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
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xff07121d).withOpacity(0.7),
                                        borderRadius:
                                            BorderRadius.circular(10)),
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
                                                      LoginPage()));
                                        },
                                        child: Text(
                                          "Login instead?",
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
                              topRight: Radius.circular(100)),
                        ),
                        height: MediaQuery.of(context).size.height * 0.75,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
