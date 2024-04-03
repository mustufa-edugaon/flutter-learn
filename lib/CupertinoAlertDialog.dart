import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoAlertDialogDemo(),
    );
  }
}

class CupertinoAlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoAlertDialog Demo'),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
              },child: Text('Cupertion AlertDialog'),
              )
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Column(children:<Widget> [
            Icon(Icons.favorite,color: Colors.red,)
          ],),
          content: const Text('This is a CupertinoAlertDialog'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
