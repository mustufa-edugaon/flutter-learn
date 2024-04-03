import 'package:flutter/material.dart';

import 'dropdown_button.dart';

void main() {
  runApp(TabBarApp());
}

class TabBarApp extends StatefulWidget {
  @override
  _TabBarAppState createState() => _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp> {
  int _selectedIndex = 0; // Track the selected tab index

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('TabBar Example'),
            backgroundColor: Colors.teal,
            bottom: TabBar(
              onTap: (index) {
                setState(() {
                  _selectedIndex = index; // Update selected index when a tab is tapped
                });
              },
              tabs: [
                Tab(icon: Icon(Icons.camera),),
                Tab(icon: Icon(Icons.chat), text: 'Chat'),
                Tab(icon: Icon(Icons.signal_wifi_statusbar_4_bar), text: 'Status'),
                Tab(icon: Icon(Icons.call), text: 'Call'),
              ],
            ),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(), // Disable swiping between tabs
            children: [
              DropdownApp(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.rocket_launch_sharp)
              // You can add more widgets corresponding to each tab here
            ],
          ),
        ),
      ),
    );
  }
}
