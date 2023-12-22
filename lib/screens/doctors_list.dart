import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thanzi_langa/screens/bottom_nav.dart';
import 'package:thanzi_langa/screens/chat_screen.dart';
import 'package:thanzi_langa/screens/doctors_profile.dart';
import 'package:thanzi_langa/utils/colors.dart';
import 'package:thanzi_langa/utils/widgets/search_bar.dart';

class DoctorsList extends StatefulWidget {
  const DoctorsList({super.key});

  @override
  State<DoctorsList> createState() => _DoctorsListState();
}

class _DoctorsListState extends State<DoctorsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        shadowColor: Colors.transparent,
        title: Text(
          "Doctors & Nurses",
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: MySearchBar(),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.73,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: 45,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorsProfile()));
                      },
                      splashColor: Colors.black,
                      child: ListTile(
                        title: Text("Amos Mkambeni"),
                        subtitle: Text("Therapist"),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          },
                          icon: Icon(CupertinoIcons.chat_bubble_fill),
                        ),
                        //Text("Mzuzu"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("images/dotolo.jpg"),
                          backgroundColor: thanziBlue,
                        ),
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
