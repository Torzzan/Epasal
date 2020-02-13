import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  ProductItem(this.title, this.price, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        trailing: IconButton(icon: Icon(Icons.shopping_cart)),
      ),
    );
  }
}
