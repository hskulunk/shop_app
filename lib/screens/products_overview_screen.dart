import 'package:flutter/material.dart';
import '../widgets/product_item.dart'; // render product item (2)
import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  // const ProductsOverviewScreen({Key//  key}) : super(key: key);

  final List<Product> loadedProducts = [
    //create a list of product property and
    // fill inside (1)
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: GridView.builder(
        // for long performance I used .builder
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length, // the list property defined above
        itemBuilder: (context, index) => ProductItem(
          // what we see on the screen
          // make a connection between ProductItem and loadedProducts (3)
          loadedProducts[index].id,
          loadedProducts[index].title,
          loadedProducts[index].imageUrl,
        ),
        // note: we can add subtree widget for each item. Instead of it, we can create
        // product_item.dart in widgets folder

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // how the grids should be looked on the screen
          crossAxisCount: 2, // 2 children in a row
          childAspectRatio: 3 / 2, // child is higher than their width
          crossAxisSpacing: 10, // space between child
          mainAxisSpacing: 10, // space between rows
        ),
      ),
    );
  }
}
