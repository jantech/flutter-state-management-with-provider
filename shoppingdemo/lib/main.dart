import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingdemo/providers/products_provider.dart';
import 'package:shoppingdemo/screens/product_detail.dart';
import 'package:shoppingdemo/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx) => Products(),
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.blue
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen()
        },
      ),
    );
  }
}
