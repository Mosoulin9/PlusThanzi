import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/appointment_list.dart';
import 'package:thanzi_langa/screens/bottom_nav.dart';

import '../colors.dart';

class AppointmentCard extends StatelessWidget {
  final Color bgColor;
  AppointmentCard({super.key, required this.bgColor});
  var _date = '2023-10-18';
  var _today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgColor,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyBottomNav(index: 1)));
        },
        borderRadius: BorderRadius.circular(20),
        splashColor: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/dotolo.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Dr Mosoulin Ncarmbaynie",
                            style: TextStyle(
                              color: Colors.blueGrey[100],
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            CupertinoIcons.checkmark_shield,
                            color: Colors.amber,
                            size: 15,
                          )
                        ],
                      ),
                      Text(
                        "Psycho Therapist",
                        style: TextStyle(
                          color: Colors.blueGrey[200],
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "Stress",
                        style: TextStyle(
                          color: Colors.blueGrey[200],
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue[900]?.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.calendar_today,
                        size: 15,
                        color: Colors.blueGrey[100],
                      ),
                      Text(
                        "20 Dec 2023",
                        style: TextStyle(
                            color: Colors.blueGrey[100], fontSize: 13),
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.clock,
                        size: 15,
                        color: Colors.blueGrey[100],
                      ),
                      Text(
                        "13:00",
                        style: TextStyle(
                            color: Colors.blueGrey[100], fontSize: 13),
                      ),
                      Spacer(),
                      // Icon(
                      //   CupertinoIcons.circle_fill,
                      //   size: 15,
                      //   color: Colors.blueGrey[100],
                      // ),
                      Text(
                        "Confirmed",
                        style:
                            TextStyle(color: Colors.green[400], fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0, right: 40.0, bottom: 20.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      showBottomSheet(
                          backgroundColor: Color(0xff07121d).withOpacity(0.8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  topLeft: Radius.circular(50))),
                          context: context,
                          builder: (BuildContext context) => Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30.0, bottom: 30),
                                      child: Text(
                                        "Reschedule Appointment",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 35.0),
                                      child: Card(
                                        child: IntrinsicHeight(
                                          child: Container(
                                            width: double.infinity,
                                            child: ExpansionTile(
                                                leading: Icon(
                                                  CupertinoIcons
                                                      .person_badge_plus,
                                                  color: Colors.pink,
                                                  size: 30,
                                                ),
                                                title: Text(
                                                  "Select Doctor or Nurse",
                                                ),
                                                children: [
                                                  Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.4,
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        children: [
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
                                                                          .circular(
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
                                                            leading: Container(
                                                              height: 25,
                                                              width: 25,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50),
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                          "images/dotolo.jpg"))),
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
                                                              height: 25,
                                                              width: 25,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50),
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                          "images/dotolo.jpg"))),
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
                                                              height: 25,
                                                              width: 25,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50),
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                          "images/dotolo.jpg"))),
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
                                                              height: 25,
                                                              width: 25,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50),
                                                                  image: DecorationImage(
                                                                      image: AssetImage(
                                                                          "images/dotolo.jpg"))),
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 40.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "13:26",
                                            style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 35,
                                            ),
                                          ),
                                          Spacer(),
                                          ElevatedButton.icon(
                                            onPressed: () {
                                              DateTime now = DateTime.now();
                                              showTimePicker(
                                                  context: context,
                                                  initialTime: TimeOfDay(
                                                      hour: now.hour,
                                                      minute: now.minute));
                                              // .then((TimeOfDay? value) {
                                              //   if (value != null) {
                                              //     Scaffold.of(context).showSnackBar(
                                              //       SnackBar(
                                              //         content: Text(
                                              //             '\u0024{value.format(context)}'),
                                              //         action: SnackBarAction(
                                              //             label: "Ok",
                                              //             onPressed: () {}),
                                              //       ),
                                              //     );
                                              //   }
                                              // });
                                            },
                                            icon: Icon(CupertinoIcons.time),
                                            label: Text("Select Time"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 40.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "2023-3-25",
                                            style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 35,
                                            ),
                                          ),
                                          Spacer(),
                                          ElevatedButton.icon(
                                            onPressed: () {
                                              showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(2023),
                                                lastDate: DateTime(2033),
                                              );
                                              // .then((TimeOfDay? value) {
                                              //   if (value != null) {
                                              //     Scaffold.of(context).showSnackBar(
                                              //       SnackBar(
                                              //         content: Text(
                                              //             '\u0024{value.format(context)}'),
                                              //         action: SnackBarAction(
                                              //             label: "Ok",
                                              //             onPressed: () {}),
                                              //       ),
                                              //     );
                                              //   }
                                              // });
                                            },
                                            icon: Icon(CupertinoIcons
                                                .calendar_badge_plus),
                                            label: Text("Select Date"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40.0, right: 40.0, top: 5),
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.pink),
                                        child: Center(
                                          child: Text(
                                            "Reschedule",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50),
                                      topLeft: Radius.circular(50)),
                                  color: Color(0xff07121d).withOpacity(0.9),
                                ),
                              ));
                    },
                    borderRadius: BorderRadius.circular(50),
                    splashColor: Colors.black,
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Center(
                          child: Text(
                        "Reschedule",
                        style: TextStyle(
                            color: thanziBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                backgroundColor:
                                    Color(0xff07121d).withOpacity(0.8),
                                content: Text(
                                  "Akulu Mufunadi kupanga cancel?",
                                  style: TextStyle(color: Colors.white),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Confirm",
                                        style: TextStyle(color: Colors.pink),
                                      )),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context, 'Back');
                                      },
                                      child: Text(
                                        "Back",
                                        style: TextStyle(color: Colors.pink),
                                      )),
                                ],
                              ));
                    },
                    borderRadius: BorderRadius.circular(50),
                    splashColor: Colors.black,
                    child: Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Center(
                          child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )),
                      decoration: BoxDecoration(
                        color: Colors.pink[400],
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
