import 'package:flutter/material.dart';
import 'package:exercise/app_drawer.dart';
import 'package:exercise/login.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FOUGERE', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/fougere.png'),
            ),
            SizedBox(height: 20),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(75),
              ),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                'Classic Member',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ProfileMenuItem(
                      text: 'To Pay',
                      icon: Icons.payment,
                      onPressed: () {
                        // Implement the action you want to perform
                      },
                      width: 75.0,
                      height: 100.0,
                    ),
                  ),
                  Expanded(
                    child: ProfileMenuItem(
                      text: 'To Ship',
                      icon: Icons.local_shipping,
                      onPressed: () {
                        // Implement the action you want to perform
                      },
                      width: 75.0,
                      height: 75.0,
                    ),
                  ),
                  Expanded(
                    child: ProfileMenuItem(
                      text: 'To Receive',
                      icon: Icons.receipt,
                      onPressed: () {
                        // Implement the action you want to perform
                      },
                      width: 75.0,
                      height: 75.0,
                    ),
                  ),
                  Expanded(
                    child: ProfileMenuItem(
                      text: 'To Review',
                      icon: Icons.star,
                      onPressed: () {
                        // Implement the action you want to perform
                      },
                      width: 75.0,
                      height: 75.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ProfileMenuItem(
                      text: 'Vouchers',
                      icon: Icons.card_giftcard,
                      onPressed: () {
                        // Implement the action you want to perform
                      },
                      width: 300.0,
                      height: 100.0,
                    ),
                  ),
                  Expanded(
                    child: ProfileMenuItem(
                      text: 'Returns & Cancellations',
                      icon: Icons.undo,
                      onPressed: () {
                        // Implement the action you want to perform
                      },
                      width: 300.0,
                      height: 75.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Set the background color to orange
              ),
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 200),
                  child: Text(
                    'LOGOUT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const ProfileMenuItem({
    required this.text,
    required this.icon,
    required this.onPressed,
    this.width = 150.0,
    this.height = 150.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.orange, // Set the color to dark yellow
            ),
            SizedBox(height: 10),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
