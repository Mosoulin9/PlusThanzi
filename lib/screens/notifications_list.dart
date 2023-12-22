import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thanzi_langa/screens/bottom_nav.dart';
import 'package:thanzi_langa/screens/chat_screen.dart';
import 'package:thanzi_langa/screens/doctors_profile.dart';
import 'package:thanzi_langa/utils/colors.dart';
import 'package:thanzi_langa/utils/widgets/search_bar.dart';

class NotificationsList extends StatefulWidget {
  const NotificationsList({super.key});

  @override
  State<NotificationsList> createState() => _NotificationsListState();
}

class _NotificationsListState extends State<NotificationsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        shadowColor: Colors.transparent,
        title: Text(
          "Notifications",
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
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          backgroundColor: Color(0xff07121d).withOpacity(0.8),
                          content: Text(
                            "Proceed deleting all notifications?",
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
                                  "Cancel",
                                  style: TextStyle(color: Colors.pink),
                                )),
                          ],
                        ));
              },
              icon: Icon(CupertinoIcons.trash_fill))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height - 80,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: 45,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => DoctorsProfile()));
                      },
                      splashColor: Colors.black,
                      child: Column(
                        children: [
                          ListTile(
                              title: Text("Appointment Confirmation"),
                              subtitle: Text(
                                  "Dr Ncarmbaynie approved your appointment."),
                              trailing: Text("15:32"),
                              leading: Container(
                                decoration: BoxDecoration(
                                    color: Colors.pink[100],
                                    borderRadius: BorderRadius.circular(100)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    CupertinoIcons.bell_fill,
                                    color: Colors.pink,
                                  ),
                                ),
                              )),
                          Divider(
                            height: 1,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
