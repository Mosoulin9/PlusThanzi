import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/forgot_pass.dart';
import 'package:thanzi_langa/screens/login_screen.dart';
import 'package:thanzi_langa/screens/notifications_list.dart';
import 'package:thanzi_langa/screens/signup_screen.dart';
import 'package:thanzi_langa/screens/user_profile.dart';
import 'package:thanzi_langa/screens/welcome_screen.dart';

import '../utils/body_content.dart';
import '../utils/colors.dart';
import '../utils/logo_grey.dart';
import '../utils/widgets/mi_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selectedIndex = 0;

  final _screens = [BodyContent(), LoginPage(), SignPage(), ForgotPassPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MiDrawer(),
      appBar: AppBar(
        elevation: 0,
        // leading: Padding(padding: const EdgeInsets.all(10.0), child: Drawer()),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black54,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Spacer(),

                Container(
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NotificationsList()));
                            },
                            icon: Icon(
                              CupertinoIcons.bell,
                              color: thanziBlue,
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 0,
                            left: 20,
                            child: Container(
                              height: 14,
                              width: 14,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "4",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Myname",
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Luwinga, Mzuzu",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              ),
                              Icon(
                                CupertinoIcons.location_solid,
                                color: Colors.grey,
                                size: 11,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyProfile()));
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "images/dotolo.jpg",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   showSelectedLabels: true,
      //   selectedFontSize: 10,
      //   currentIndex: _selectedIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      //   showUnselectedLabels: false,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(CupertinoIcons.home),
      //       label: "home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(CupertinoIcons.calendar),
      //       label: "home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(CupertinoIcons.chat_bubble),
      //       label: "home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(CupertinoIcons.person),
      //       label: "home",
      //     ),
      //   ],
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
