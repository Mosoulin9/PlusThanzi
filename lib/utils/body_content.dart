import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thanzi_langa/screens/chat_screen.dart';
import 'package:thanzi_langa/screens/home.dart';
import 'package:thanzi_langa/utils/colors.dart';
import 'package:thanzi_langa/utils/widgets/appointment_card.dart';
import 'package:thanzi_langa/utils/widgets/search_bar.dart';

class BodyContent extends StatelessWidget {
  // BodyContent({
  //   super.key,
  // });
  bool avail = false;
  final online = 'online';
  List pharmacies = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Cough",
    "Cold",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              avail
                  ? SizedBox(
                      height: 1,
                    )
                  : AppointmentCard(bgColor: thanziBlue),
              SizedBox(
                height: 15,
              ),
              MySearchBar(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nearby Pharmacies"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[500]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 160,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  //shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: pharmacies.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Card(
                          color: Colors.grey[800],
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.black,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Thanzi Pharmacy",
                                                style: TextStyle(
                                                  color: Colors.blueGrey[100],
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                CupertinoIcons.plus_circle,
                                                color: Colors.green,
                                                size: 15,
                                              )
                                            ],
                                          ),
                                          Text(
                                            "Medicals And More",
                                            style: TextStyle(
                                              color: Colors.blueGrey[200],
                                              fontSize: 13,
                                            ),
                                          ),
                                          Text(
                                            "Open",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: Icon(
                                          Icons.medical_services,
                                          color: Colors.blue[500],
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.blue[700]
                                              ?.withOpacity(0.4),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20.0, bottom: 20.0),
                                  child: Container(
                                    height: 30,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[700]?.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            CupertinoIcons.location_solid,
                                            size: 15,
                                            color: Colors.blueGrey[100],
                                          ),
                                          Text(
                                            "5 Km",
                                            style: TextStyle(
                                                color: Colors.blueGrey[100],
                                                fontSize: 13),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.directions_walk_outlined,
                                            size: 15,
                                            color: Colors.blueGrey[100],
                                          ),
                                          Text(
                                            "ETA | 13:00",
                                            style: TextStyle(
                                                color: Colors.blueGrey[100],
                                                fontSize: 13),
                                          ),
                                          Spacer(),
                                          TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Directions",
                                              style: TextStyle(
                                                  color: Colors.blue[400],
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nearby Doctors & Nurses"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[500]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatScreen(),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("images/dotolo.jpg"),
                            ),
                            Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: online == 'online'
                                          ? Colors.green
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(50)),
                                ))
                          ]),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Dr Mosoulin Ncarmbaynie",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              height: 20,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  // border: Border(
                                  //     top: BorderSide(
                                  //   color: Colors.black12,
                                  //   width: 2,
                                  //   style: BorderStyle.solid,
                                  //   strokeAlign: BorderSide.strokeAlignOutside,
                                  // )),
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey[300]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Therapist",
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 10,
                                      width: 1,
                                      color: Colors.grey[700],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.location_pin,
                                      color: Colors.black45,
                                      size: 13,
                                    ),
                                    Text(
                                      "Mzuzu",
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nearby Hospitals & Clinics"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "see all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[500]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 130,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  //shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: pharmacies.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Card(
                          color: Colors.grey[100],
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.black,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Thanzi Hospital",
                                                style: TextStyle(
                                                  color: Colors.blueGrey[500],
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              SizedBox(width: 2),
                                              Icon(
                                                Icons.local_hospital_outlined,
                                                color: Colors.green,
                                                size: 15,
                                              )
                                            ],
                                          ),
                                          Text(
                                            "Local Hospital",
                                            style: TextStyle(
                                              color: Colors.blueGrey[300],
                                              fontSize: 13,
                                            ),
                                          ),
                                          Text(
                                            "Open",
                                            style: TextStyle(
                                              color: Colors.green[300],
                                              fontSize: 10,
                                            ),
                                          )
                                        ],
                                      ),
                                      Spacer(),
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: Icon(
                                          Icons.local_hospital_outlined,
                                          color: Colors.green[300],
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.green[700],
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, right: 20.0, bottom: 20.0),
                                  child: Container(
                                    height: 30,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.green[700]?.withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Row(
                                        children: [
                                          Icon(
                                            CupertinoIcons.location_solid,
                                            size: 15,
                                            color: Colors.blueGrey[100],
                                          ),
                                          Text(
                                            "3 Km",
                                            style: TextStyle(
                                                color: Colors.blueGrey[100],
                                                fontSize: 13),
                                          ),
                                          Spacer(),
                                          Icon(
                                            Icons.directions_walk_outlined,
                                            size: 15,
                                            color: Colors.blueGrey[100],
                                          ),
                                          Text(
                                            "ETA | 1:00",
                                            style: TextStyle(
                                                color: Colors.blueGrey[100],
                                                fontSize: 13),
                                          ),
                                          Spacer(),
                                          TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "Directions",
                                              style: TextStyle(
                                                  color: Colors.blue[100],
                                                  fontSize: 13),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
