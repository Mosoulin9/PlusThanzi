import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/appointment_list.dart';
import 'package:thanzi_langa/screens/chat_screen.dart';
import 'package:thanzi_langa/screens/doctors_list.dart';
import 'package:thanzi_langa/screens/forgot_pass.dart';
import 'package:thanzi_langa/screens/home.dart';
import 'package:thanzi_langa/screens/login_screen.dart';
import 'package:thanzi_langa/screens/messages_list.dart';
import 'package:thanzi_langa/screens/signup_screen.dart';
import 'package:thanzi_langa/screens/welcome_screen.dart';

import '../utils/body_content.dart';
import '../utils/colors.dart';
import '../utils/logo_grey.dart';
import '../utils/widgets/mi_drawer.dart';

class MyBottomNav extends StatefulWidget {
  var index;

  MyBottomNav({super.key, this.index});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  //var _selectedIndex = 0;

  final _screens = [
    MyHomePage(),
    AppointmentScreen(),
    MessagesList(),
    DoctorsList()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[widget.index == null ? 0 : widget.index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        selectedFontSize: 13,
        selectedItemColor: Colors.grey,
        currentIndex: widget.index == null ? 0 : widget.index,
        onTap: (index) {
          setState(() {
            widget.index == null ? 0 : widget.index = index;
          });
        },
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              color: thanziBlue,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.calendar,
              color: thanziBlue,
            ),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chat_bubble,
              color: thanziBlue,
            ),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_2,
              color: thanziBlue,
            ),
            label: "Doctors",
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
