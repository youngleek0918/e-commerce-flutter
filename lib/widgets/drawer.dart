import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

@widget
Widget drawer() => Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text('Kayoung'),
          accountEmail: Text('kayoung@gamil.com'),
          currentAccountPicture: GestureDetector(
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.red[400],
          ),
        ),

        // Body
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Home Page'),
            leading: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('My Account'),
            leading: Icon(
              Icons.person,
              color: Colors.red,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('My Orders'),
            leading: Icon(
              Icons.shopping_basket,
              color: Colors.red,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Shopping cart'),
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Favorites'),
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ),

        Divider(),

        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('Setting'),
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: ListTile(
            title: Text('About'),
            leading: Icon(
              Icons.help,
              color: Colors.green,
            ),
          ),
        ),
      ],
    ));
