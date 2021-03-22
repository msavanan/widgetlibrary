import 'package:flutter/material.dart';

class CardNavPage extends StatelessWidget {
  final String pageName;
  CardNavPage({this.pageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageName),
      ),
      body: Center(
        child: Container(
          child: Text(pageName),
        ),
      ),
    );
  }
}
