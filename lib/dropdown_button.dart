
import 'package:flutter/material.dart';

class DropdownApp extends StatefulWidget {
  const DropdownApp({super.key});

  @override
  State<DropdownApp> createState() => _DropdownAppState();
}

class _DropdownAppState extends State<DropdownApp> {
  List dropDown = [
    {'title':'BCA','value':'0'},
    {'title':'MCA','value':'1'},
    {'title':'B.Tech','value':'3'},
    {'title':'M.Tech','value':'4'}
  ];
  String defultValue = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('DropDown Button'),
        ),
        body: ListView(
          children: [
            SizedBox(height: 8,),
            InputDecorator(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),)
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: defultValue,
                    isDense: true,
                    isExpanded: true,
                    menuMaxHeight: 350,
                    items: [
                      DropdownMenuItem(child: Text('Select course'),value:"",),
                      ...dropDown.map<DropdownMenuItem<String>>((data){
                        return DropdownMenuItem(
                            child: Text(data['title']),value: data['value'],);
                      }).toList()
              
                    ], onChanged: (value) {
                      setState(() {
                        defultValue=value!;
                      });
                    },
              
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                if(defultValue==""){
                  print("please select corse");
                }
                else{
                  print("selected corse $defultValue");
                }
              }, child: Text('Save')),
            )
          ],
        ),
      ),
    );
  }
}

