import 'package:epasal/model/product.dart';
import 'package:epasal/widgets/product_item.dart';
import 'package:flutter/material.dart';

class ProductOverViewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
        id: "first",
        title: "Watch",
        price: 2000,
        description: "the best watch you will find",
        imageURL:
            "https://9to5google.com/wp-content/uploads/sites/4/2019/02/samsung_galaxy_watch_active.jpg",
        isFavourite: false),
    Product(
        id: "second",
        title: "Mobile",
        price: 60000,
        description: "the best quality image you will find in a mobile",
        imageURL:
            "https://n2.sdlcdn.com/imgs/h/w/e/Realme-Mirror-Black-C1-16GB-SDL110240914-1-79121.jpeg",
        isFavourite: false),
    Product(
        id: "third",
        title: "Bag",
        price: 3000,
        description: "the best Bag quality you will find",
        imageURL:
            "https://image.goxip.com/fobp9jYDfTAFDQx_pkcwvqAPACA=/fit-in/400x400/filters:format(jpeg):quality(80)/aff_images/gucci-padlock-gg-medium-shoulder-bag-9881482.jpg",
        isFavourite: false),
    Product(
        id: "fourth",
        title: "Laptop",
        price: 200000,
        description: "the  lighest laptop you will find",
        imageURL:
            "https://i.pcmag.com/imagery/reviews/05stkmhncYEUxin1aoOQjcQ-18.fit_lpad.size_624x364.v_1569478101.jpg",
        isFavourite: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EPasal"),
      ),
      body: GridView.builder(
          itemCount: loadedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (ctx, i) {
            return ProductItem(
              loadedProducts[i].title,
              loadedProducts[i].price,
              loadedProducts[i].imageURL,
            );
          }),
    );
  }
}
