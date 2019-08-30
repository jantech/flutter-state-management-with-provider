
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingdemo/providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key key}) : super(key: key);

  static const String routeName = 'product-detail';

  @override
  Widget build(BuildContext context) {

    // read argumnets from route
    final productId = ModalRoute.of(context).settings.arguments as String;

    var loadedProduct = Provider.of<Products>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title),),
    );
  }
}