import 'package:flutter/material.dart';
import 'package:flutter_componant/screens/dashboard.dart';
import 'package:flutter_componant/screens/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Add a 2-second delay
    Future.delayed(Duration(seconds: 4), () {
      // Navigate to the next page after the delay
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue, // Customize the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "FluTTer\nCoMPonant",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                letterSpacing: 10
              ),
            ),

          ],
        ),
      ),
    );
  }
}
