import 'package:e_commerce_flutter/widgets/app_bar.dart';
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
      appBar: appbarwidget(),
      body: ListView(children: <Widget>[
        Container(
          height: 300.0,
          child: GridTile(
            child: Container(
              color: Colors.white,
              child: Image.asset(widget.productDetailPicture),
            ),
          ),
        ),
      ]),
    );
  }
}
