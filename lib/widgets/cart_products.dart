import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      "name": "Hoodie",
      "picture": "images/products/hoodie_product.png",
      "price": 50,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Jean",
      "picture": "images/products/jean_product.png",
      "price": 20,
      "size": "S",
      "color": "Blue",
      "quantity": 2,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productsOnTheCart.length,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          cartProductName: productsOnTheCart[index]["name"],
          cartProductColor: productsOnTheCart[index]["color"],
          cartProductQty: productsOnTheCart[index]["quantity"],
          cartProductSize: productsOnTheCart[index]["size"],
          cartProductPrice: productsOnTheCart[index]["price"],
          cartProductPicture: productsOnTheCart[index]["picture"],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cartProductName;
  final cartProductPicture;
  final cartProductPrice;
  final cartProductSize;
  final cartProductColor;
  final cartProductQty;

  SingleCartProduct(
      {this.cartProductName,
      this.cartProductPicture,
      this.cartProductPrice,
      this.cartProductSize,
      this.cartProductColor,
      this.cartProductQty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//  ===== LEADING SECTION =====
        leading: Image.asset(cartProductPicture, width: 80.0, height: 80.0),

//  ===== TITLE SECTION =====
        title: Text(cartProductName),

//  ===== TITLE SECTION =====
        subtitle: Column(
          children: <Widget>[
//            ROW INSIDE THE COLUMN
            Row(
              children: <Widget>[
//  ======= This section is for the size of the product =======
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text('Size'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    cartProductSize,
                    style: TextStyle(color: Colors.red),
                  ),
                ),

//  ======= This section is for the color of the product =======
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text('Color'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(cartProductColor,
                      style: TextStyle(color: Colors.red)),
                ),
              ],
            ),

//  ======= This section is for the price of the product =======
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                '\$$cartProductPrice',
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),

        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_drop_up),
                iconSize: 50,
                onPressed: () {}),
              Text(
                '$cartProductQty',
                style: TextStyle(fontSize: 35),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                ),
                iconSize: 50,
                onPressed: () {}
              ),
            ],
          ),
        ),
      ),
    );
  }
}
