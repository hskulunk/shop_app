import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart'; // for making a connection with ProductDetailScreen
// its required to import product_detail_screen.dart for the widget availability (2)

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(
    this.id,
    this.title,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          // create a gesture detector on image that
          // allows us onTap function (1)
          onTap: (() {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) =>
                    ProducDetailScreen(title)), // make a connection with
                //ProductDetailSecreen (2), when the title is defined above as well as
                // the ProductDetailScreen (3)
              ),
            );
          }),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
