import 'package:flutter/material.dart';
import 'package:exercise/main.dart';
import 'package:exercise/product_details.dart';
import 'app_drawer.dart';

class ProductList extends MyApp {
  final List<Map<String, String>> products = [
    {
      'name': 'Trappin With A Broken Heart Hoodie',
      'description':
          'Black, pullover hoodie. Trappin with a broken heart print. Fabric Cotent 50% Polyester 50% Cotton.',
      'price': '\$24.99',
      'image': 'images/h1.jpg'
    },
    {
      'name': 'Harley Davidson Tshirt',
      'description':
          'Black, round-neck tshirt. Annual Harley davidson design. Fabric Cotent: 100% Cotton',
      'price': '\$11.99',
      'image': 'images/t2.jpg'
    },
    {
      'name': 'Seahorse Polo',
      'description':
          'Navy blue, turn down polo. Orange seahorse print. Fabric content 100% Cotton.',
      'price': '\$13.99',
      'image': 'images/p4.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fougere',
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: const MyDrawer(), // use your Drawer class here
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(products[index]['image']!),
            title: Text(products[index]['name']!),
            subtitle: Text(products[index]['description']!),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(products[index]['price']!),
                const SizedBox(width: 10),
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    // TODO: Implement add to cart functionality.
                  },
                ),
                IconButton(
                  icon: Icon(Icons.payment),
                  onPressed: () {
                    // TODO: Implement buy functionality.
                  },
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetails(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
