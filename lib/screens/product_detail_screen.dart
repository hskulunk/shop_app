import 'package:flutter/material.dart';

class ProducDetailScreen extends StatelessWidget {
  // Note: instead of defining arguments (2)
  // final String
  //     title;
  // final double price;
  // ProducDetailScreen(this.title, this.price);

  static const routeName =
      'product-detail'; // create static const routeName (2)

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context).settings.arguments as String; // is the id (6)
    //..
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
