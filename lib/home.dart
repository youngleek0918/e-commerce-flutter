import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget imageCarousel = Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/products/1.png'),
        AssetImage('images/products/2.png'),
        AssetImage('images/products/3.png'),
        AssetImage('images/products/4.png'),
        AssetImage('images/products/5.png'),
        AssetImage('images/products/6.png'),
      ],
      autoplay: false,
      // animationCurve: Curves.fastOutSlowIn,
      // animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
    ),
  );
  

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Online Shopping Mall'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {})
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
              color: Colors.red,
            ),
          ),

          // Body
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Orders'),
              leading: Icon(Icons.shopping_basket),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Categoris'),
              leading: Icon(Icons.category),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favorites'),
              leading: Icon(Icons.favorite),
            ),
          ),

          Divider(),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Setting'),
              leading: Icon(Icons.settings),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help),
            ),
          ),
        ],
      )),
      body: ListView(
        children: <Widget>[
          imageCarousel,
        ]
      ),
    );
  }
}
