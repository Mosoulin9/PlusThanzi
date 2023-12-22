import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//import 'package:fluttertoast/fluttertoast.dart';
import 'package:thanzi_langa/screens/bottom_nav.dart';
import 'package:thanzi_langa/screens/home.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:thanzi_langa/screens/messages_list.dart';
import 'package:thanzi_langa/utils/colors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool incoming = true;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage(
                  "images/img.png",
                ),
                fit: BoxFit.cover)),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
            child: Container(
              alignment: Alignment.center,
              color: Colors.black.withOpacity(0.2),
            ),
          ),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: thanziBlue,
          leading: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MessagesList()));
                  },
                  icon: Icon(CupertinoIcons.back)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyBottomNav(index: 0)));
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: thanziBlue,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/dotolo.jpg"))),
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Mosoulin",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.videocam,
                  )),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.phone)),
            ],
          ),
          leadingWidth: MediaQuery.of(context).size.width,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 5, left: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, right: 5),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 5, right: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.send),
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 5, right: 15),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 5, left: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, right: 5),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 5, right: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.send),
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 5, right: 15),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 5, left: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, right: 5),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 5, right: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.send),
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 5, right: 15),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 5, left: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, right: 5),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 5, right: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.send),
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 5, right: 15),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 5, left: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, right: 5),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 5, right: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.send),
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 5, right: 15),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 5, left: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, right: 5),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 5, right: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.send),
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 5, right: 15),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100.0, top: 5, left: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 15, right: 5),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0, top: 5, right: 5),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(MessageType.send),
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E2),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 5, right: 15),
                          child: Text(
                            "ugdssdguefgsuiugidugeifcjyufjyfiffiyfutdutedutdutdutdtdtdudtudtduttdtdtudcewgiutfyjfyfugfeigfciewgfcewg",
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 15.0, bottom: 8),
                          child: Row(
                            children: [
                              Spacer(),
                              Text(
                                "14:37",
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                              Icon(
                                CupertinoIcons.checkmark_alt,
                                size: 10,
                                color: Colors.grey,
                              )
                            ],
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
        bottomNavigationBar: SingleChildScrollView(
          child: BottomAppBar(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                              hintText: "Message...",
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.normal)),
                        ),
                      ),
                    ),
                    //Spacer(),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.paperclip,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.camera,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Fluttertoast.showToast(
                        //     msg: "This is Center Short Toast",
                        //     toastLength: Toast.LENGTH_SHORT,
                        //     gravity: ToastGravity.CENTER,
                        //     timeInSecForIosWeb: 1,
                        //     backgroundColor: Colors.red,
                        //     textColor: Colors.white,
                        //     fontSize: 16.0);
                      },
                      icon: Icon(
                        CupertinoIcons.paperplane,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
