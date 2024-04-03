import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CupertionActionSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Action Sheet Example'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Show Action Sheet'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) => CupertinoActionSheet(
                title: const Text('Select an Option'),
                actions: <Widget>[
                  CupertinoActionSheetAction(
                    child: Text('Option 1'),
                    onPressed: () {
                      // Action to perform when Option 1 is tapped
                      Navigator.pop(context);
                    },
                  ),
                  CupertinoActionSheetAction(
                    child: const Text('Option 2'),
                    onPressed: () {
                      // Action to perform when Option 2 is tapped
                      Navigator.pop(context);
                    },
                  ),
                ],
                cancelButton: CupertinoActionSheetAction(
                  child: const Text('Cancel'),
                  onPressed: () {
                    // Action to perform when Cancel is tapped
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
