import 'package:flutter/material.dart';

class Neumorphic extends StatefulWidget {
  @override
  _NeumorphicState createState() => _NeumorphicState();
}

class _NeumorphicState extends State<Neumorphic> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      ),
      backgroundColor: darkMode ? Colors.grey[850] : Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: Icon(Icons.android,
                  size: 80, color: darkMode ? Colors.white : Colors.black),
              decoration: BoxDecoration(
                  color: darkMode ? Colors.grey[850] : Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: darkMode ? Colors.black54 : Colors.grey[500],
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: darkMode ? Colors.grey[800] : Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50, right: 3),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.white),
                    child: Text(
                      'Light',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      setState(() {
                        darkMode = false;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 3),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                    //color: Colors.black,
                    child: Text(
                      'Dark',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        darkMode = true;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
