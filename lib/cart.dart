import 'package:flutter/material.dart';
import 'package:exercise/app_drawer.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fougere',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('Your cart is empty.'),
      ),
    );
  }
}
