import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CupertinoActivityIndicatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showActivityIndicator = true;

  @override
  void initState() {
    super.initState();
    // Hide the activity indicator after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        _showActivityIndicator = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remove CupertinoActivityIndicator After 5 Seconds'),
      ),
      body: Center(
        child: _showActivityIndicator
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Loading...',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  CupertinoActivityIndicator(),
                ],
              ),
            ),
          ],
        )
            : const Text(
          'Content Loaded!',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
