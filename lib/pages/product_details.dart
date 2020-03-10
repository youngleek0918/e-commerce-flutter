import 'package:e_commerce_flutter/home.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetailName;
  final productDetailPicture;
  final productDetailOldPrice;
  final productDetailPrice;

  ProductDetails(
      {this.productDetailName,
      this.productDetailPicture,
      this.productDetailOldPrice,
      this.productDetailPrice});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
              onPressed: () {})
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          height: 300.0,
          child: GridTile(
            child: Container(
              color: Colors.white,
              child: Image.asset(widget.productDetailPicture),
            ),
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(
                  widget.productDetailName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        '\$${widget.productDetailOldPrice}',
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '\$${widget.productDetailPrice}',
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

//      ============ the first buttons ============
        Row(
          children: <Widget>[
//      ============ the size buttons ============
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: Text('Size'),
                            content: Text('Choose the size'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('close'),
                              ),
                            ]);
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Size')),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),
//      ============ the size buttons ============
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: Text('Color'),
                            content: Text('Choose the Color'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('close'),
                              ),
                            ]);
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Color')),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),
//      ============ the size buttons ============
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('Choose the quantity'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('close'),
                              ),
                            ]);
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(child: Text('Qty')),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),
          ],
        ),

//      ============ the second buttons ============
        Row(
          children: <Widget>[
//      ============ the size buttons ============
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                textColor: Colors.white,
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(10)),
                // shape: StadiumBorder(),
                elevation: 0.2,
                child: Text('Buy'),
              ),
            ),

            IconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                onPressed: () {}),
            IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.red),
                onPressed: () {}),
          ],
        ),
        Divider(),
        ListTile(
          title: Text('Product Details'),
          subtitle: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
        ),
        Divider(),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text(
                'Product name',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(widget.productDetailName),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text(
                'Product brand',
                style: TextStyle(color: Colors.grey),
              ),
            ),
//          REMEMBER TO CREATE THE PRODUCT BRAND
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('Brand X'),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text(
                'Product condition',
                style: TextStyle(color: Colors.grey),
              ),
            ),
//          REMEMBER TO CREATE THE PRODUCT CONDITION
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('NEW'),
            ),
          ],
        ),

        Divider(),
        Padding(
          padding: EdgeInsets.all(8.0), 
          child: Text('Similar products')
        ),
        Container(
          height: 150.0,
          child: SimilarProducts(),
        ),
      ]),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var productList = [
    {
      "name": "Skirt",
      "picture": "images/products/skirt_product.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "T-Shirt",
      "picture": "images/products/tshirt_product.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Heel",
      "picture": "images/products/heel_product.png",
      "old_price": 100,
      "price": 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return SimilarSingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['old_price'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class SimilarSingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SimilarSingleProduct({
    this.productName,
    this.productPicture,
    this.productOldPrice,
    this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                    // passing the values of the poduct to the product details page
                    builder: (context) => ProductDetails(
                          productDetailName: productName,
                          productDetailPicture: productPicture,
                          productDetailOldPrice: productOldPrice,
                          productDetailPrice: productPrice,
                        )),
              ),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        productName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$productPrice",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$productOldPrice",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    productPicture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
