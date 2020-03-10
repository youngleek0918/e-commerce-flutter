import 'package:e_commerce_flutter/widgets/app_bar.dart';
import 'package:e_commerce_flutter/widgets/drawer.dart';
import 'package:e_commerce_flutter/widgets/horizontal_list.dart';
import 'package:e_commerce_flutter/widgets/image_carousel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarwidget(),
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
      ]),
    );
  }
}
