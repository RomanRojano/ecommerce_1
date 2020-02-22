import 'package:flutter/material.dart';
import 'package:provider/provider.dart' ;
import './providers/products.dart';

import './screens/home_screen.dart';
import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Products(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ECommerce',
          theme: ThemeData (
            primarySwatch: Colors.red,
            accentColor: Colors.grey,
            canvasColor: Colors.green,
          ),
          //home: HomePageScreen(),
          initialRoute: HomePageScreen.routeName,
          routes: {
            HomePageScreen.routeName: (ctx) => HomePageScreen(),
            ProductsOverviewScreen.routeName: (ctx) => ProductsOverviewScreen(),
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          },
        ), 
    );
  }
}
