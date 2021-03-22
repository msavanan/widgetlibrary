import 'package:flutter/material.dart';
import 'package:widgetlibrary/icicicard/icici_navigation_page.dart';

class AccountCard extends StatefulWidget {
  @override
  _AccountCardState createState() => _AccountCardState();
}

class _AccountCardState extends State<AccountCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(left: 10, top: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Color(0XFF992125),
        ),
        height: MediaQuery.of(context).size.width * .5,
        width: MediaQuery.of(context).size.width * .8,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Savings Account",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "ICICI Bank",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '12345678901',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  side: BorderSide(color: Colors.white)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return CardNavPage(pageName: "View Balance");
                  }),
                );
              },
              child: Text(
                "View Balance",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return CardNavPage(pageName: "Create UPI ID");
                  }),
                );
              },
              child: Text(
                "Create UPI ID",
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return CardNavPage(pageName: "Statement");
                      }),
                    );
                  },
                  child: Text(
                    "Statement",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  child: VerticalDivider(
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return CardNavPage(pageName: "Debit Card");
                        }),
                      );
                    },
                    child: Text(
                      "Debit Card",
                      style: TextStyle(color: Colors.white),
                    )),
                Container(
                  child: VerticalDivider(
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return CardNavPage(pageName: "Services");
                        }),
                      );
                    },
                    child: Text(
                      "Services",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
