import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/bottom_nav.dart';
import 'package:thanzi_langa/screens/completed_appointments.dart';
import 'package:thanzi_langa/screens/home.dart';
import 'package:thanzi_langa/screens/pending_appointments.dart';
import 'package:thanzi_langa/screens/upcoming_appointments.dart';
import 'package:thanzi_langa/utils/colors.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    final kTabPages = <Widget>[
      UpcomingAppointments(),
      PendingAppointments(),
      CompletedAppointments(),
    ];
    final kTabs = <Tab>[
      Tab(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: thanziBlue),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Upcoming",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      Tab(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xff201F0F).withOpacity(0.7)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Pending",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Tab(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color(0xff0f7139),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Completed",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ];
    return DefaultTabController(
      length: kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          foregroundColor: Colors.grey,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicator: ShapeDecoration(shape: ContinuousRectangleBorder()),
            tabs: kTabs,
            dividerColor: Colors.grey,
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyBottomNav(
                              index: 0,
                            )));
              },
              icon: Icon(CupertinoIcons.back)),
          title: Text(
            "Appointments",
          ),
        ),
        body: Stack(children: [
          TabBarView(
            children: kTabPages,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: FloatingActionButton.extended(
                icon: Icon(CupertinoIcons.plus),
                label: Text("Add"),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) => SingleChildScrollView(
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
                                      padding: const EdgeInsets.all(50.0),
                                      child: Text(
                                        "Add an appointment",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[300]),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "12:24",
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 15),
                                        ),
                                        ElevatedButton.icon(
                                          onPressed: () {},
                                          icon: Icon(CupertinoIcons.time),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: ExpansionTile(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        backgroundColor: Colors.grey[600],
                                        title: Text(
                                          "Reason",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey[300]),
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
                                                    color: Colors.grey[300]),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
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
                                                    color: Colors.grey[300]),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
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
                                                    color: Colors.grey[300]),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: ExpansionTile(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        backgroundColor: Colors.grey[600],
                                        title: Text(
                                          "Choose Doctor or Nurse",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey[300]),
                                        ),
                                        leading: Icon(
                                          CupertinoIcons.person_badge_plus,
                                          color: Colors.grey[500],
                                        ),
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.20,
                                            child: SingleChildScrollView(
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
                                                    leading: Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  "images/dotolo.jpg"))),
                                                    ),
                                                    trailing: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Text(
                                                          "Mzuzu",
                                                          style: TextStyle(
                                                              fontSize: 10),
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
                                                    leading: Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  "images/dotolo.jpg"))),
                                                    ),
                                                    trailing: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Text(
                                                          "Mzuzu",
                                                          style: TextStyle(
                                                              fontSize: 10),
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
                                                    leading: Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  "images/dotolo.jpg"))),
                                                    ),
                                                    trailing: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Text(
                                                          "Mzuzu",
                                                          style: TextStyle(
                                                              fontSize: 10),
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
                                                    leading: Container(
                                                      height: 50,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(50),
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  "images/dotolo.jpg"))),
                                                    ),
                                                    trailing: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Text(
                                                          "Mzuzu",
                                                          style: TextStyle(
                                                              fontSize: 10),
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
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 100.0, vertical: 10),
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
                backgroundColor: Colors.white,
                foregroundColor: Colors.pink,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
