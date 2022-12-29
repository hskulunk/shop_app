import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  //const ProductItem({Key key}) : super(key: key);
  final String id; //properties of ProductItem
  final String title; //properties of ProductItem
  final String imageUrl; //properties of ProductItem

  ProductItem(
    this.id,
    this.title,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return GridTile(
      // we can also use Card widget,
      // also ListTile widget for listview or side drawer, imageurl defined above
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover, // covered equaly sized
      ),
      footer: GridTileBar(
        // create a footer description
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        title: Text(
          title, //defined above
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
