import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  var picked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${picked ?? ""}"),
            ElevatedButton(
              child: Text("Date Picker"),
              onPressed: () async {
                final currentDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2015, 1),
                  lastDate: DateTime(2100),
                );
                setState(() {
                  picked = currentDate;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
