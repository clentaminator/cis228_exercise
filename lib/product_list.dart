import 'package:flutter/material.dart';
import 'package:exercise/main.dart';
import 'package:exercise/product_details.dart';
import 'app_drawer.dart';

class ProductList extends MyApp {
  final List<Map<String, String>> products = [
    {
      'name': 'Trappin With A Broken Heart Hoodie',
      'description':
          'Black, pullover hoodie. Trappin with a broken heart print. Fabric Content 50% Polyester 50% Cotton.',
      'price': '\$24.99',
      'image': 'images/hoodies/h1.jpg',
      'type': 'hoodie',
    },
    {
      'name': 'Grey Oversize Hoodie',
      'description': 'Grey, pullover hoodie. Fabric Content 100% Cotton.',
      'price': '\$16.99',
      'image': 'images/hoodies/h2.jpg',
      'type': 'hoodie',
    },
    {
      'name': 'Abstract Hoodie',
      'description':
          'Off white, pullover hoodie with bstract print design. Fabric Content 70% Polyester 30% Cotton.',
      'price': '\$29.99',
      'image': 'images/hoodies/h3.jpg',
      'type': 'hoodie',
    },
    {
      'name': 'Retro Style Polo',
      'description':
          'Multi-color pique polo. Fabric content 75% Polyester and 25% Cotton.',
      'price': '\$18.99',
      'image': 'images/polo/p5.jpg',
      'type': 'polo',
    },
    {
      'name': 'White Vintage Polo',
      'description':
          'White, pique polo with black flower print. Fabric content 100% Cotton.',
      'price': '\$12.99',
      'image': 'images/polo/p6.jpg',
      'type': 'polo',
    },
    {
      'name': 'Summer Vibe Hoodie',
      'description':
          'Red, pullover hoodie with gold japanese texts. Fabric Content 35% Polyester 65% Cotton.',
      'price': '\$22.99',
      'image': 'images/hoodies/h4.jpg',
      'type': 'hoodie',
    },
    {
      'name': 'New Balance Hoodie',
      'description':
          'White, pullover hoodie with embroidered new balance logo. Fabric Content 40% Polyester 60% Cotton.',
      'price': '\$26.99',
      'image': 'images/hoodies/h5.jpg',
      'type': 'hoodie',
    },
    {
      'name': 'Spartan Tshirt',
      'description':
          'Gray, round-neck tshirt with black spartan print. Fabric Content: 100% Cotton',
      'price': '\$9.99',
      'image': 'images/tshirt/t3.jpg',
      'type': 't-shirt',
    },
    {
      'name': 'Commando Tshirt',
      'description':
          'Commando Green, round-neck tshirt. Fabric Content: 100% Cotton',
      'price': '\$9.99',
      'image': 'images/tshirt/t4.jpg',
      'type': 't-shirt',
    },
    {
      'name': 'SRSLY Minimal Tshirt',
      'description':
          'White, round-neck tshirt with blue SRSLY letters print. Fabric Content: 100% Cotton',
      'price': '\$8.99',
      'image': 'images/tshirt/t5.jpg',
      'type': 't-shirt',
    },
    {
      'name': 'Pacman Tshirt',
      'description':
          'Yellow, round-neck tshirt with limited Edition Pacman design. Fabric Content: 100% Cotton',
      'price': '\$13.99',
      'image': 'images/tshirt/t6.jpg',
      'type': 't-shirt',
    },
    {
      'name': 'Stripe Turn Down Polo',
      'description':
          'Vertical black and white stripe. Fabric content 50% Polyester and 50% Cotton.',
      'price': '\$19.99',
      'image': 'images/polo/p1.jpg',
      'type': 'polo',
    },
    {
      'name': 'Floral Polo',
      'description':
          'Black, turn down polo with floral pattern print. Fabric content 100% Cotton.',
      'price': '\$20.99',
      'image': 'images/polo/p2.jpg',
      'type': 'polo',
    },
    {
      'name': 'Yellow Hoodie',
      'description': 'Yellow, pullover hoodie. Fabric Content 100% Cotton.',
      'price': '\$13.99',
      'image': 'images/hoodies/h6.jpg',
      'type': 'hoodie',
    },
    {
      'name': 'BKNY Black Tshirt',
      'description':
          'Black, round-neck tshirt with BKNY limited edition design. Fabric Content: 100% Cotton',
      'price': '\$13.99',
      'image': 'images/tshirt/t1.jpg',
      'type': 't-shirt',
    },
    {
      'name': 'Harley Davidson Tshirt',
      'description':
          'Black, round-neck tshirt. Annual Harley davidson design. Fabric Content: 100% Cotton',
      'price': '\$11.99',
      'image': 'images/tshirt/t2.jpg',
      'type': 't-shirt',
    },
    {
      'name': 'Slim Stripe Polo',
      'description':
          'Black, pique polo with slim vertical white stripes. Fabric content 100% Cotton.',
      'price': '\$13.99',
      'image': 'images/polo/p3.jpg',
      'type': 'polo',
    },
    {
      'name': 'Seahorse Polo',
      'description':
          'Navy blue, turn down polo. Orange seahorse print. Fabric content 100% Cotton.',
      'price': '\$13.99',
      'image': 'images/polo/p4.jpg',
      'type': 'polo',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FOUGERE',
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
