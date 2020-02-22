import 'package:ecommerce_1/screens/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product.dart';


class ProductItem extends StatelessWidget {
/*  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl); */

  @override
  Widget build(BuildContext context) {

    final product = Provider.of<Product>(context);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: product.id,
              );
            },
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        footer: Container(
          height: 40,
          child: GridTileBar(
            backgroundColor: Colors.black54,
            leading:  IconButton(
              icon: Icon(product.isFavorite ? Icons.favorite: Icons.favorite_border),
              onPressed: () {
                product.toggleFavoriteStatus();
              },
            ),
            title: Text(
              product.title,
              style: TextStyle(fontSize: 15),
              softWrap: true,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {},
            ),
          ),
        ),
      )
    );
  }
}

