import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

@widget
Widget appbarwidget() => AppBar(
      backgroundColor: Colors.red,
      title: Text('Online Shopping Mall'),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search),
            color: Colors.white, 
            onPressed: () {}),
        IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {})
      ],
    );
