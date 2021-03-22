import 'package:flutter/material.dart';

import 'icicicard/card.dart';

class DrawerStackWidget extends StatefulWidget {
  @override
  _DrawerStackWidgetState createState() => _DrawerStackWidgetState();
}

class _DrawerStackWidgetState extends State<DrawerStackWidget> {
  bool enableMenu = false;
  double widthStack = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                top: 0,
                child: enableMenu
                    ? Container(
                        color: Color(0xFF3c3936),
                        width: widthStack,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Home',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            TextButton(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.padding,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Apply Now',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            TextButton(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.pages,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Passbook',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            TextButton(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.contact_page_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Contact us',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            TextButton(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calculate,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Calculator',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            TextButton(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.inbox,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Inbox',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            TextButton(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.security,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Safety Tips',
                                      style: TextStyle(color: Colors.white)),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            TextButton(
                              child: Row(children: [
                                Icon(
                                  Icons.mobile_screen_share,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Change Login pin',
                                    style: TextStyle(color: Colors.white)),
                              ]),
                              onPressed: () {},
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            TextButton(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.fingerprint,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Disable FingerPrints',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Rate Us',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )),
                            Divider(
                              color: Colors.white,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.power_settings_new_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Logout',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )),
                            Divider(
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    : Container()),
            Positioned(
              left: widthStack,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          enableMenu = !enableMenu;
                          if (enableMenu) {
                            setState(() {
                              widthStack = 180;
                            });
                          } else {
                            setState(() {
                              widthStack = 0;
                            });
                          }
                        });
                      },
                      icon: Icon(
                        enableMenu
                            ? Icons.close
                            : Icons.horizontal_split_rounded,
                        color: Color(0XFF992125),
                      )),
                  AccountCard(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Back'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0XFF992125),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
