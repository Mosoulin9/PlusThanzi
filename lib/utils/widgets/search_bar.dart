import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.66,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 1, bottom: 10.0, right: 15),
              child: TextField(
                cursorColor: Colors.black54,
                decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 15,
                    ),
                    hintText: "Search",
                    border: InputBorder.none),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 6,
                  spreadRadius: 0,
                  blurStyle: BlurStyle.outer,
                )
              ],
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {},
            splashColor: Colors.blue,
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 6,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.outer,
                  )
                ],
              ),
              child: Center(
                  child: Icon(
                CupertinoIcons.search,
                size: 25,
                color: Colors.blue[400],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
