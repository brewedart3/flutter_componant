import 'package:flutter/material.dart';
import 'package:flutter_componant/componant/text_component.dart';

import '../../componant/button_component.dart';
import '../../componant/text_filed_componant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextCompo(text: 'LOG IN',textSize: 50,textColor: Colors.blue, ),
SizedBox(height: 40,),



            InputFieldComponent(
              paddingHorizontal: 10,
              paddingVertical: 5,
              labelText: 'Username..',
              controller: usernameController,
            ),
            InputFieldComponent(

              paddingHorizontal: 10,
              paddingVertical: 5,
              labelText: 'Password..',
              controller: passwordController,
            ),
            ButtonComponent(
              text: 'Login',
              paddingVertical: 10,
              paddingHorizontal:20,
              textSize: 20,
              onPressed: () {
                // Add your button 1 action here
              },
            ),
            SizedBox(height:50,)
          ],
        ),
      ),
    );
  }
}
