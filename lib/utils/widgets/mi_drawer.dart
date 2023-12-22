import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/welcome_screen.dart';
import '../colors.dart';

class MiDrawer extends StatelessWidget {
  MiDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.withOpacity(0.7),
      child: Drawer(
        backgroundColor: Colors.black12.withOpacity(0.8),
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/white.png",
                          height: 25,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Thanzi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: thanziBlue,
                                fontSize: 20),
                            children: [
                              TextSpan(
                                text: "Langa+",
                                style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    color: thanziBlue,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "Amos Mkambeni",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Current location:",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                      Spacer(),
                      Text(
                        "Luwinga, Mzuzu",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  // Divider(
                  //   color: Colors.white,
                  // )
                ],
              ),
            )),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 0.1,
            ),
            InkWell(
              splashColor: Colors.green.withOpacity(0.5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
              child: ListTile(
                title: Center(
                  child: Row(
                    children: [
                      Text(
                        "Appointments",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green.withOpacity(0.4)),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.calendar,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 0.1,
            ),
            InkWell(
              splashColor: Colors.green.withOpacity(0.5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
              child: ListTile(
                title: Center(
                  child: Row(
                    children: [
                      Text(
                        "Doctors & Nurses",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green.withOpacity(0.4)),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.person_2,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 0.1,
            ),
            InkWell(
              splashColor: Colors.green.withOpacity(0.5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
              child: ListTile(
                title: Center(
                  child: Row(
                    children: [
                      Text(
                        "Pharmacies",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green.withOpacity(0.4)),
                  child: Center(
                    child: Icon(
                      Icons.medical_services_outlined,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 0.1,
            ),
            InkWell(
              splashColor: Colors.green.withOpacity(0.5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
              child: ListTile(
                title: Center(
                  child: Row(
                    children: [
                      Text(
                        "Hospitals & Clinics",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green.withOpacity(0.4)),
                  child: Center(
                    child: Icon(
                      Icons.local_hospital_outlined,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 0.1,
            ),
            InkWell(
              splashColor: Colors.green.withOpacity(0.5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
              child: ListTile(
                title: Center(
                  child: Row(
                    children: [
                      Text(
                        "Ambulance Services",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green.withOpacity(0.4)),
                  child: Center(
                    child: Icon(
                      Icons.sos_outlined,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 0.1,
            ),
            InkWell(
              splashColor: Colors.green.withOpacity(0.5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
              child: ListTile(
                title: Center(
                  child: Row(
                    children: [
                      Text(
                        "Medication Reminders",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green.withOpacity(0.4)),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.alarm,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 0.1,
            ),
            InkWell(
              splashColor: Colors.green.withOpacity(0.5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
              child: ListTile(
                title: Center(
                  child: Row(
                    children: [
                      Text(
                        "Important Numbers",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green.withOpacity(0.4)),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.phone,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 0.1,
            ),
            InkWell(
              splashColor: Colors.green.withOpacity(0.5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
              child: ListTile(
                title: Center(
                  child: Row(
                    children: [
                      Text(
                        "About",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green.withOpacity(0.4)),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.info,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 0.1,
            ),
            InkWell(
              splashColor: Colors.green.withOpacity(0.5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
              child: ListTile(
                title: Center(
                  child: Row(
                    children: [
                      Text(
                        "Profile",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green.withOpacity(0.4)),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.person,
                    ),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.4),
              height: 1,
              thickness: 0.1,
            ),
            InkWell(
              splashColor: Colors.green.withOpacity(0.5),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWelcomePage()));
              },
              child: ListTile(
                title: Center(
                  child: Row(
                    children: [
                      Text(
                        "Logout",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green.withOpacity(0.4)),
                  child: Center(
                    child: Icon(
                      Icons.logout_outlined,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
