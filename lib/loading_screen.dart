import 'package:flutter/material.dart';
import 'package:exercise/main.dart';
import 'package:exercise/home.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Future.delayed(Duration(seconds: 3), () {
      // Navigating to the home page after 3 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black, // Set the background color to black
        child: Padding(
          padding: EdgeInsets.only(
              bottom: 50.0), // Add padding to push the container to the bottom
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30.0),
                Image.asset(
                  'assets/images/fougere.png', // Replace with your own image path
                  width: 200.0,
                  height: 200.0,
                ),
                SizedBox(height: 10.0),
                Text(
                  'FOUGERE',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Set the text color to white
                  ),
                ),
                SizedBox(height: 200.0),
                Container(
                  width: MediaQuery.of(context).size.width *
                      0.25, // Set the width to 25% of the screen width
                  child: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.orange), // Set the loading bar color to orange
                    backgroundColor: Colors
                        .yellow, // Set the background color of the loading bar
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
