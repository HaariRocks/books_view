import 'package:books_view/util/categories_details.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String image;
  CategoryItem({this.title = 'Book Name', this.image});
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber[100],
          border: Border.all(width: 0.25, color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                categoryImages.contains(title.toLowerCase())
                    ? 'assets/category_images/' + title.toLowerCase() + '.png'
                    : 'assets/category_images/no_images.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
