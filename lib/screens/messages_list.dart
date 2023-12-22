import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:thanzi_langa/screens/bottom_nav.dart';
import 'package:thanzi_langa/screens/chat_screen.dart';
import 'package:thanzi_langa/utils/colors.dart';
import 'package:thanzi_langa/utils/widgets/search_bar.dart';

class MessagesList extends StatefulWidget {
  const MessagesList({super.key});

  @override
  State<MessagesList> createState() => _MessagesListState();
}

class _MessagesListState extends State<MessagesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.grey,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Text(
          "Messages",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: ListView.builder(
                  itemCount: 45,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      splashColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: ExactAssetImage(
                                "images/dotolo.jpg",
                              ),
                              backgroundColor: thanziBlue,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green),
                              ),
                            ),
                          )
                        ]),
                      ),
                    );
                  }),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 15.0, left: 15.0, bottom: 15),
              child: MySearchBar(),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.65,
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
                                  builder: (context) => ChatScreen()));
                        },
                        splashColor: Colors.black,
                        child: ListTile(
                          title: Text("Amos Mkambeni"),
                          subtitle: Text("Hello, Heloooo"),
                          trailing: Text("14:49"),
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
      ),
    );
  }
}
