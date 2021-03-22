import 'package:flutter/material.dart';

class SlidingListView extends StatefulWidget {
  @override
  _SlidingListViewState createState() => _SlidingListViewState();
}

class _SlidingListViewState extends State<SlidingListView>
    with SingleTickerProviderStateMixin {
  bool showListView = false;
  AnimationController controller;
  Animation<Offset> animation;

  @override
  void initState() {
    super.initState();
    controller =
        new AnimationController(duration: Duration(seconds: 10), vsync: this)
          ..addListener(() => setState(() {}));
    animation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, 0))
        .animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
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
                    offset: animation.value,
                    child: Container(
                      //decoration: BoxDecoration(border: Border.all()),
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
                          Divider(
                            thickness: 2,
                          ),
                          TextButton(
                              style:
                                  TextButton.styleFrom(primary: Colors.black),
                              onPressed: () {
                                setState(() {
                                  controller.reverse();
                                  //showListView = !showListView;
                                });
                              },
                              child: Row(
                                  children: [Text('Business'), Container()])),
                          Divider(
                            thickness: 2,
                          ),
                          TextButton(
                              style:
                                  TextButton.styleFrom(primary: Colors.black),
                              onPressed: () {
                                setState(() {
                                  showListView = !showListView;
                                });
                              },
                              child: Text('Upcoming'))
                        ],
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
