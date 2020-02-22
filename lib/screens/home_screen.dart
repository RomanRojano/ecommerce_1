import 'package:flutter/material.dart';
import '../screens/products_overview_screen.dart';

class HomePageScreen extends StatelessWidget {

  static const routeName = 'home-screen' ;
  
  selectProductsOverview(BuildContext context) {
    Navigator.of(context).pushNamed(ProductsOverviewScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePageScreen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/ip11bg.jpg"),
            fit:BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text('Welcome'),
              RaisedButton (
                child: Text('Press me',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                color: Theme.of(context).accentColor,
                onPressed: () => selectProductsOverview(context),
              )
            ],
          )
        )
      ),
    );
  }
}
