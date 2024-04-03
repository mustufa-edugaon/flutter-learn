import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final String name, email, phone;

  WelcomePage({
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Card(
          elevation: 5,
          shadowColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Icon(Icons.person, color: Colors.blueAccent),
                  title: Text(
                    'Name:',
                    style: TextStyle(fontSize: 20,color:Colors.blueAccent ),
                  ),
                  subtitle: Text(
                    name,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.email, color: Colors.blueAccent),
                  title: Text(
                    'Email:',
                    style: TextStyle(fontSize: 20,color:Colors.blueAccent ),
                  ),
                  subtitle: Text(
                    email,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone, color: Colors.blueAccent),
                  title: Text(
                    'Phone:',
                    style: TextStyle(fontSize: 20,color:Colors.blueAccent ),
                  ),
                  subtitle: Text(
                    phone,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
