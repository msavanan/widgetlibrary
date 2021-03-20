import 'package:flutter/material.dart';

class SlidingListView extends StatefulWidget {
  @override
  _SlidingListViewState createState() => _SlidingListViewState();
}

class _SlidingListViewState extends State<SlidingListView> {
  bool showListView = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              color: Colors.black,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              showListView = !showListView;
                            });
                          },
                          child: Text('Past')),
                    ],
                  ),
                  Text(
                    'Choose a Trip',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ],
              ),
            ),
            showListView
                ? Transform.translate(
                    offset: Offset(0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                                primary: Colors.black,
                                alignment: Alignment.centerLeft),
                            onPressed: () {
                              setState(() {
                                showListView = !showListView;
                              });
                            },
                            child: Text('Past')),
                        TextButton(
                            style: TextButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              setState(() {
                                showListView = !showListView;
                              });
                            },
                            child: Text('Business')),
                        TextButton(
                            style: TextButton.styleFrom(primary: Colors.black),
                            onPressed: () {
                              setState(() {
                                showListView = !showListView;
                              });
                            },
                            child: Text('Upcoming'))
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
