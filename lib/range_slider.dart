import 'package:flutter/material.dart';

class RangeSliderApp extends StatefulWidget {
  const RangeSliderApp({super.key});

  @override
  State<RangeSliderApp> createState() => _RangeSliderAppState();
}

class _RangeSliderAppState extends State<RangeSliderApp> {
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Range Slider'),
          backgroundColor: Colors.red,
        ),
        body: RangeSlider(
          values: values,
          labels: labels,
          divisions: 10,
          activeColor: Colors.greenAccent,
          inactiveColor: Colors.blue,
          min: 0,
          max: 100,
          onChanged: (newValue){
            values = newValue;
            setState(() {
            });
          },
        ),
      ),
    );
  }
}
