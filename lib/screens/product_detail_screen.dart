import 'package:flutter/material.dart';

class ProducDetailScreen extends StatelessWidget {
  // const ProducDetailScreen({Key key// }) : super(key: key);

  final String
      title; // we create a property for making a connection with the Product
  //item property == title (3)

  ProducDetailScreen(this.title); // (3)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), //defined above
      ),
    );
  }
}
