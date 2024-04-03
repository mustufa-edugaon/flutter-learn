import 'package:flutter/material.dart';
import 'package:flutter_learn/welcome_page.dart';

class SendDataPage extends StatefulWidget {
  const SendDataPage({super.key});

  @override
  State<SendDataPage> createState() => _SendDataPageState();
}

class _SendDataPageState extends State<SendDataPage> {

  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sharing Data'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _name,
              decoration: InputDecoration(
                labelText: 'name',
                hintText: 'Enter Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8)
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                  labelText: 'email',
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _phone,
              decoration: InputDecoration(
                  labelText: 'phone',
                  hintText: 'Enter Phone',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)
                  )
              ),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => WelcomePage(name: _name.text, email: _email.text, phone: _phone.text)));

          }, child: Text('Send '))
        ],
      ),
    );
  }
}
