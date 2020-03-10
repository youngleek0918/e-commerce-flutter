import 'package:e_commerce_flutter/pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Hoodie",
      "picture": "images/products/hoodie_product.png",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Jean",
      "picture": "images/products/jean_product.png",
      "old_price": 100,
      "price": 50,
    },
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
      "name": "Ring",
      "picture": "images/products/ring_product.png",
      "old_price": 120,
      "price": 85,
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
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['old_price'],
            productPrice: productList[index]['price'],
          );
        });
  }
} 

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SingleProduct({
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
                  )
                ),
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
