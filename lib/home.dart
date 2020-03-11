import 'package:e_commerce_flutter/pages/cart.dart';
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
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text('Online Shopping Mall'),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              })
        ],
      ),
      drawer: Drawer(
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
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
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
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));},
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
      ),
    ),
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
