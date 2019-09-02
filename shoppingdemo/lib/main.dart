import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingdemo/providers/cart_provider.dart';
import 'package:shoppingdemo/providers/products_provider.dart';
import 'package:shoppingdemo/screens/cart_screen.dart';
import 'package:shoppingdemo/screens/product_detail.dart';
import 'package:shoppingdemo/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(primarySwatch: Colors.green, accentColor: Colors.blue),
        home: ProductsOverviewScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen()
        },
      ),
    );
  }
}
