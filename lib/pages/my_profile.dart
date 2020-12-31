import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => new _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "UserName",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.blue,
            ),
          )
        ],
        elevation: 0,
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Content Details", style: _contentDetailsTextStyle()),
            Table(
              children: [
                TableRow(children: [
                  TableCell(
                    child: Text("first cell"),
                  ),
                  TableCell(
                    child: Text("second cell"),
                  )
                ]),
                TableRow(children: [
                  TableCell(
                    child: Text("first cell"),
                  ),
                  TableCell(
                    child: Text("second cell"),
                  )
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle _contentDetailsTextStyle() {
  return TextStyle(color: Colors.blue);
}
