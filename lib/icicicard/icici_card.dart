import 'package:flutter/material.dart';
import 'package:widgetlibrary/icicicard/card.dart';
import 'package:widgetlibrary/icicicard/icici_navigation_page.dart';

class AccountCards extends StatefulWidget {
  @override
  _AccountCardsState createState() => _AccountCardsState();
}

class _AccountCardsState extends State<AccountCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: AccountCard());
  }
}
