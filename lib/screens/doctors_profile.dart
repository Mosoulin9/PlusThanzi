import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thanzi_langa/utils/colors.dart';

class DoctorsProfile extends StatefulWidget {
  const DoctorsProfile({super.key});

  @override
  State<DoctorsProfile> createState() => _DoctorsProfileState();
}

class _DoctorsProfileState extends State<DoctorsProfile> {
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
          "Profile",
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
                            "Dr Amos Mkambeni",
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
                                "Dentist",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.star_fill,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              CupertinoIcons.star_fill,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              CupertinoIcons.star_fill,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              CupertinoIcons.star_lefthalf_fill,
                              size: 15,
                              color: Colors.amber,
                            ),
                            Icon(
                              CupertinoIcons.star,
                              size: 15,
                              color: Colors.amber,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.video_camera_solid,
                                  size: 35,
                                  color: Colors.pink[300],
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.phone_fill,
                                  color: Colors.pink[300],
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.chat_bubble_fill,
                                  color: Colors.pink[300],
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ListTile(
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey[400]),
                              child: Icon(CupertinoIcons.location_solid)),
                          trailing: Text("Mzuzu"),
                        ),
                        ListTile(
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey[400]),
                              child: Icon(CupertinoIcons.phone_fill)),
                          trailing: Text("+265999810091"),
                        ),
                        ListTile(
                          leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey[400]),
                              child: Icon(CupertinoIcons.at)),
                          trailing: Text("amomka@thanzi.com"),
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
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(50.0),
                                                child: Text(
                                                  "Add an appointment",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.grey[300]),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Text(
                                                    "12:24",
                                                    style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 15),
                                                  ),
                                                  ElevatedButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                        CupertinoIcons.time),
                                                    label: Text("Time"),
                                                  ),
                                                  Text(
                                                    "31 Dec 2023",
                                                    style: TextStyle(
                                                        color: Colors.grey[500],
                                                        fontSize: 15),
                                                  ),
                                                  ElevatedButton.icon(
                                                    onPressed: () {},
                                                    icon: Icon(CupertinoIcons
                                                        .calendar_badge_plus),
                                                    label: Text("Date"),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0),
                                                child: ExpansionTile(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  backgroundColor:
                                                      Colors.grey[600],
                                                  title: Text(
                                                    "Reason",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color:
                                                            Colors.grey[300]),
                                                  ),
                                                  leading: Icon(
                                                    CupertinoIcons.news,
                                                    color: Colors.grey[500],
                                                  ),
                                                  children: [
                                                    InkWell(
                                                      onTap: () {},
                                                      splashColor: Colors.black,
                                                      child: ListTile(
                                                        title: Text(
                                                          "Reason",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .grey[300]),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10.0),
                                                      child: Divider(
                                                        height: 1,
                                                        thickness: 0.2,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {},
                                                      splashColor: Colors.black,
                                                      child: ListTile(
                                                        title: Text(
                                                          "Reason",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .grey[300]),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10.0),
                                                      child: Divider(
                                                        height: 1,
                                                        thickness: 0.2,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    InkWell(
                                                      onTap: () {},
                                                      splashColor: Colors.black,
                                                      child: ListTile(
                                                        title: Text(
                                                          "Reason",
                                                          style: TextStyle(
                                                              fontSize: 15,
                                                              color: Colors
                                                                  .grey[300]),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10.0),
                                                      child: Divider(
                                                        height: 1,
                                                        thickness: 0.2,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0),
                                                child: ExpansionTile(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  backgroundColor:
                                                      Colors.grey[600],
                                                  title: Text(
                                                    "Choose Doctor or Nurse",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color:
                                                            Colors.grey[300]),
                                                  ),
                                                  leading: Icon(
                                                    CupertinoIcons
                                                        .person_badge_plus,
                                                    color: Colors.grey[500],
                                                  ),
                                                  children: [
                                                    Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.20,
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          children: [
                                                            // ListView.builder(
                                                            //     itemCount: 4,
                                                            //     scrollDirection:
                                                            //         Axis.vertical,
                                                            //     itemBuilder:
                                                            //         (context, index) {
                                                            //       return ListTile(
                                                            //         title: Text(
                                                            //           "Dr Mosoulin Ncarmbaynie",
                                                            //         ),
                                                            //         subtitle: Text(
                                                            //           "Dentist",
                                                            //         ),
                                                            //         leading: Container(
                                                            //           height: 50,
                                                            //           width: 50,
                                                            //           decoration: BoxDecoration(
                                                            //               borderRadius:
                                                            //                   BorderRadius
                                                            //                       .circular(
                                                            //                           50),
                                                            //               image: DecorationImage(
                                                            //                   image: AssetImage(
                                                            //                       "images/dotolo.jpg"))),
                                                            //         ),
                                                            //         trailing: Column(
                                                            //           mainAxisAlignment:
                                                            //               MainAxisAlignment
                                                            //                   .end,
                                                            //           children: [
                                                            //             Text(
                                                            //               "Mzuzu",
                                                            //               style: TextStyle(
                                                            //                   fontSize: 10),
                                                            //             ),
                                                            //           ],
                                                            //         ),
                                                            //       );
                                                            //     }),
                                                            Divider(
                                                              height: 1,
                                                            ),
                                                            ListTile(
                                                              title: Text(
                                                                "Dr Mosoulin Ncarmbaynie",
                                                              ),
                                                              subtitle: Text(
                                                                "Dentist",
                                                              ),
                                                              leading:
                                                                  Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50),
                                                                    image: DecorationImage(
                                                                        image: AssetImage(
                                                                            "images/dotolo.jpg"))),
                                                              ),
                                                              trailing: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    "Mzuzu",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 1,
                                                            ),
                                                            ListTile(
                                                              title: Text(
                                                                "Dr Mosoulin Ncarmbaynie",
                                                              ),
                                                              subtitle: Text(
                                                                "Dentist",
                                                              ),
                                                              leading:
                                                                  Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50),
                                                                    image: DecorationImage(
                                                                        image: AssetImage(
                                                                            "images/dotolo.jpg"))),
                                                              ),
                                                              trailing: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    "Mzuzu",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 1,
                                                            ),
                                                            ListTile(
                                                              title: Text(
                                                                "Dr Mosoulin Ncarmbaynie",
                                                              ),
                                                              subtitle: Text(
                                                                "Dentist",
                                                              ),
                                                              leading:
                                                                  Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50),
                                                                    image: DecorationImage(
                                                                        image: AssetImage(
                                                                            "images/dotolo.jpg"))),
                                                              ),
                                                              trailing: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    "Mzuzu",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 1,
                                                            ),
                                                            ListTile(
                                                              title: Text(
                                                                "Dr Mosoulin Ncarmbaynie",
                                                              ),
                                                              subtitle: Text(
                                                                "Dentist",
                                                              ),
                                                              leading:
                                                                  Container(
                                                                height: 50,
                                                                width: 50,
                                                                decoration: BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50),
                                                                    image: DecorationImage(
                                                                        image: AssetImage(
                                                                            "images/dotolo.jpg"))),
                                                              ),
                                                              trailing: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Text(
                                                                    "Mzuzu",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
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
                                                      horizontal: 100.0,
                                                      vertical: 10),
                                                  child: Text(
                                                    "Book(MWK2300)",
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
                                  "Book Appointment(MWK2000)",
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
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[400],
                      backgroundImage: AssetImage("images/dotolo.jpg"),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
