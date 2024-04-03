import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatePickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoDatePickerDemo(),
    );
  }
}

class CupertinoDatePickerDemo extends StatefulWidget {
  @override
  _CupertinoDatePickerDemoState createState() =>
      _CupertinoDatePickerDemoState();
}

class _CupertinoDatePickerDemoState extends State<CupertinoDatePickerDemo> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('CupertinoDatePicker Demo'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton(
              child: Text('Select Date'),
              onPressed: () {
                _showDatePicker(context);
              },
            ),
            SizedBox(height: 20),
            Text(
              'Selected Date: ${_selectedDate.toString()}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  void _showDatePicker(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300.0,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
            initialDateTime: _selectedDate,
            onDateTimeChanged: (DateTime newDateTime) {
              setState(() {
                _selectedDate = newDateTime;
              });
            },
          ),
        );
      },
    );
  }
}
