import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thanzi_langa/utils/colors.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.back,
              color: Colors.grey,
            )),
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    height: MediaQuery.of(context).size.height * 0.30,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                        color: Colors.grey[100]),
                    height: MediaQuery.of(context).size.height * 0.60,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),
                          child: Text(
                            "Amos Mkambeni",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: thanziBlue,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20),
                              child: Text(
                                "User",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey[100],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 120),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey[400],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.pencil,
                                    size: 10,
                                  ),
                                  Text(
                                    "Edit profile picture",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ListTile(
                          title: Text("Mzuzu"),
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey[400]),
                              child: Icon(CupertinoIcons.location_solid)),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(CupertinoIcons.pencil)),
                          //
                        ),
                        ListTile(
                          title: Text("+265999810091"),
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey[400]),
                              child: Icon(CupertinoIcons.phone_fill)),
                        ),
                        ListTile(
                          title: Text("Date of birth"),
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey[400]),
                              child: Icon(CupertinoIcons.calendar)),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(CupertinoIcons.pencil)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (BuildContext context) =>
                                  SingleChildScrollView(
                                child: Container(
                                  height: MediaQuery.of(context).size.height,
                                  decoration: BoxDecoration(
                                    color: Color(0xff07121d).withOpacity(0.3),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30),
                                    ),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 40,
                                        sigmaY: 40,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          //color: Color(0xff07121d).withOpacity(0.3),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            topLeft: Radius.circular(30),
                                          ),
                                        ),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.grey
                                                            .withOpacity(0.3)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 30.0,
                                                          vertical: 5),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: TextField(
                                                          cursorColor:
                                                              Colors.black,
                                                          decoration:
                                                              InputDecoration(
                                                                  prefixIcon:
                                                                      Icon(
                                                                    CupertinoIcons
                                                                        .lock_shield_fill,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  focusColor:
                                                                      Colors
                                                                          .white,
                                                                  hintText:
                                                                      "Old password",
                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors
                                                                              .white),
                                                                  border:
                                                                      InputBorder
                                                                          .none),
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.grey
                                                            .withOpacity(0.3)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 30.0,
                                                          vertical: 5),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: TextField(
                                                          cursorColor:
                                                              Colors.black,
                                                          decoration:
                                                              InputDecoration(
                                                                  prefixIcon:
                                                                      Icon(
                                                                    CupertinoIcons
                                                                        .lock_shield_fill,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  focusColor:
                                                                      Colors
                                                                          .white,
                                                                  hintText:
                                                                      "New password",
                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors
                                                                              .white),
                                                                  border:
                                                                      InputBorder
                                                                          .none),
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.grey
                                                            .withOpacity(0.3)),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 30.0,
                                                          vertical: 5),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: TextField(
                                                          cursorColor:
                                                              Colors.black,
                                                          decoration:
                                                              InputDecoration(
                                                                  prefixIcon:
                                                                      Icon(
                                                                    CupertinoIcons
                                                                        .lock_shield_fill,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                  focusColor:
                                                                      Colors
                                                                          .white,
                                                                  hintText:
                                                                      "Confirm password",
                                                                  hintStyle:
                                                                      TextStyle(
                                                                          color: Colors
                                                                              .white),
                                                                  border:
                                                                      InputBorder
                                                                          .none),
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.pink,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 150.0,
                                                      vertical: 10),
                                                  child: Text(
                                                    "Change",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          splashColor: Colors.black,
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: thanziBlue,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 15),
                                child: Text(
                                  "Change Password",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.50,
                child: Stack(children: [
                  Center(
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[50],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey[200],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: thanziBlue,
                      ),
                    ),
                  ),
                  Stack(children: [
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[400],
                        backgroundImage: AssetImage("images/dotolo.jpg"),
                      ),
                    ),
                  ]),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
