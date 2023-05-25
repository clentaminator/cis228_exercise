import 'package:flutter/material.dart';
import 'package:exercise/main.dart';
import 'package:exercise/product_details.dart';
import 'app_drawer.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> products = [
    {
      'name': 'Trappin With A Broken Heart Hoodie',
      'description':
          'Black, pullover hoodie. Trappin with a broken heart print. Fabric Content 50% Polyester 50% Cotton.',
      'price': '\$24.99',
      'image': 'images/h1.jpg',
      'type': 'hoodie',
    },
    {
      'name': 'Harley Davidson Tshirt',
      'description':
          'Black, round-neck tshirt. Annual Harley davidson design. Fabric Content: 100% Cotton',
      'price': '\$11.99',
      'image': 'images/t2.jpg',
      'type': 't-shirt',
    },
    {
      'name': 'Seahorse Polo',
      'description':
          'Navy blue, turn down polo. Orange seahorse print. Fabric content 100% Cotton.',
      'price': '\$13.99',
      'image': 'images/p4.jpg',
      'type': 'polo',
    },
  ];

  void _handleSearchBarClick() {
    // Handle search bar click
  }

  List<Map<String, String>> sortedProducts = [];

  String selectedType = 'all';

  void sortProducts(String type) {
    setState(() {
      selectedType = type;
      if (type == 'all') {
        sortedProducts = List.from(products);
      } else {
        sortedProducts =
            products.where((product) => product['type'] == type).toList();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    sortedProducts = List.from(products);
  }

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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: _handleSearchBarClick,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Collections',
                        border: InputBorder.none,
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => sortProducts('all'),
                          child: Text(
                            'All',
                            style: TextStyle(
                              color: selectedType == 'all'
                                  ? Colors.white
                                  : Colors.grey[700],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: selectedType == 'all'
                                ? Colors.orange
                                : Colors.yellow,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => sortProducts('hoodie'),
                          child: Text(
                            'Hoodie',
                            style: TextStyle(
                              color: selectedType == 'hoodie'
                                  ? Colors.white
                                  : Colors.grey[700],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: selectedType == 'hoodie'
                                ? Colors.orange
                                : Colors.yellow,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => sortProducts('polo'),
                          child: Text(
                            'Polo',
                            style: TextStyle(
                              color: selectedType == 'polo'
                                  ? Colors.white
                                  : Colors.grey[700],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: selectedType == 'polo'
                                ? Colors.orange
                                : Colors.yellow,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => sortProducts('t-shirt'),
                          child: Text(
                            'T-Shirt',
                            style: TextStyle(
                              color: selectedType == 't-shirt'
                                  ? Colors.white
                                  : Colors.grey[700],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: selectedType == 't-shirt'
                                ? Colors.orange
                                : Colors.yellow,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Discover',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Adjust the cross-axis count as needed
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: 0.75, // Adjust the aspect ratio as needed
              ),
              itemCount: sortedProducts.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetails(product: sortedProducts[index]),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 1.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: FractionallySizedBox(
                                widthFactor: 0.8,
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset(
                                    sortedProducts[index]['image']!,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                sortedProducts[index]['name']!,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                sortedProducts[index]['price']!,
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
