// AddDataScreen.dart

// Import necessary dependencies and BLoC classes

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../firebase/CreateBLoC.dart';
import '../firebase/FirebaseService.dart';

class AddDataScreen extends StatelessWidget {
  final CreateBLoC createBLoC = CreateBLoC();
  final FirebaseService mFirebaseService = FirebaseService();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Data'),
      ),
      body: Center(
        child: Column(
          children: [
            // Your form widgets go here
            // ...
            ElevatedButton(
              onPressed: () {
                final data = {

                  'name': 'John Doe',
                  'email': 'johndoe@example.com',
                  'age': 30,
                  'city': 'New York',
                };
                createBLoC.createData(data, 'sahil');

                // mFirebaseService.readData('sahil');
              },
              child: Text('Add Data'),
            ),
          ],
        ),
      ),
    );
  }



  // @override
  // void dispose() {
  //   createBLoC.dispose();
  //   super.dispose();
  // }
}
