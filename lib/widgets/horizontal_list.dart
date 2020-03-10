import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/category/top.png',
            imageCaption: 'Top',
          ),
          Category(
            imageLocation: 'images/category/pants.png',
            imageCaption: 'Pants',
          ),
          Category(
            imageLocation: 'images/category/skirt.png',
            imageCaption: 'Skirt',
          ),
          Category(
            imageLocation: 'images/category/dress.png',
            imageCaption: 'Dress',
          ),
          Category(
            imageLocation: 'images/category/shoe.png',
            imageCaption: 'Shoes',
          ),
          Category(
            imageLocation: 'images/category/jewelry.png',
            imageCaption: 'Jewelry',
          ),
        ],
      ),
      
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({
    this.imageLocation, 
    this.imageCaption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0), 
      child: InkWell(
        onTap: (){}, 
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 80.0,
              height: 60.0,
              ), 
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(imageCaption, style: TextStyle(fontSize: 12.0),),
            ),
          ),
        ),
      ),
    );
  }
}