import 'package:flutter/material.dart';

class StepperApp extends StatefulWidget {
  const StepperApp({super.key});

  @override
  State<StepperApp> createState() => _StepperAppState();
}

class _StepperAppState extends State<StepperApp> {
  int _activeStepIndex = 0;
  late GlobalKey<FormState> _formKey;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pinCode = TextEditingController();
  List<Step> stepList() => [
         Step(
           state: -_activeStepIndex <=0 ?StepState.editing :StepState.complete,
            isActive: _activeStepIndex >=0,
            title: const Text('Account'),
            content: Container(
              child: Column(
                children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: TextField(
                     controller: name,
                     decoration: InputDecoration(
                       labelText: 'Full Name',
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8)
                       )
                     ),
                   ),
                 ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: email,
                      decoration: InputDecoration(
                        labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: password,
                      obscureText: true,
                      maxLength: 6,
                      decoration: InputDecoration(
                        labelText: 'password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                    ),
                  ),
                ],
              ),
            )),
         Step(
             state: -_activeStepIndex <=1 ?StepState.editing :StepState.complete,
             isActive: _activeStepIndex >=1,
            title: Text('Address'),
            content: Container(
              child:Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: address,
                      decoration: InputDecoration(
                          labelText: 'Full Address',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: pinCode,
                      decoration: InputDecoration(
                          labelText: 'Pin Code',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)
                          )
                      ),
                    ),
                  ),
                ],
              ),
            )
         ),
         Step(
             state: -_activeStepIndex <=2 ?StepState.editing :StepState.complete,
             isActive: _activeStepIndex >=2,
            title: Text('Confirm'),
            content: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Name : - ${name.text}'),
                  Text('Email : - ${email.text}'),
                  Text('Password : - ${password.text}'),
                  Text('Address : - ${address.text}'),
                  Text('Pin Code : - ${pinCode.text}')
                ],
              ),
            ))
      ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stepper'),
          backgroundColor: Colors.blue,
        ),
        body: Stepper(
          type: StepperType.horizontal,
          steps: stepList(),
          currentStep: _activeStepIndex,
          onStepContinue: () {
            if(_activeStepIndex <(stepList().length-1)){
              _activeStepIndex +=1;
            }
            setState(() {

            });
          },
          onStepCancel: () {
            _activeStepIndex -=1;
            setState(() {
            });
          },

        ),
      ),
    );
  }
}
