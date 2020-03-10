import 'package:e_commerce_flutter/widgets/drawer.dart';
import 'package:e_commerce_flutter/widgets/horizontal_list.dart';
import 'package:e_commerce_flutter/widgets/image_carousel.dart';
import 'package:e_commerce_flutter/widgets/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red[400],
        title: InkWell(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
          child: Text('Online Shopping Mall'),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {})
        ],
      ),
      drawer: drawer(),
      body: ListView(children: <Widget>[
        //image carousel
        ImageCarousel(),

        //padding widget
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Categories'),
        ),

        //Horizontal list view
        HorizontalList(),

        //padding widget
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text('Recent products'),
        ),

        //Product list
        Container(
          height: 400.0,
          child: Products(),
        ),
      
      
      ]),
    );
  }
}
