import 'package:flutter/material.dart';
import 'package:exercise/main.dart';
import 'package:exercise/app_drawer.dart';

class AboutPage extends MyApp {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fougere', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'images/fougere.png', // Replace with your image path
              height: 200.0,
              width: 200.0,
            ),
            SizedBox(height: 16.0),
            Text(
              'Fougère',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                height: 5,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Welcome to our online store, where you can find the latest collection of stylish and comfortable hoodies and shirts for men. Our high-quality products are made from premium materials to ensure both comfort and durability.',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
